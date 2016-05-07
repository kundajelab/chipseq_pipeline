#!/bin/bash

############ install in conda env.
conda config --add channels r
conda config --add channels bioconda
conda config --add channels astro
conda config --add channels kalefranz # bug free readline
conda config --add channels asmeurer # libtool

conda create -n aquas_chipseq --file requirements.txt -y
conda install -n aquas_chipseq --file requirements_r2.txt -y --force # force install R-2.15.3

conda create -n aquas_chipseq_py3 --file requirements_py3.txt -y


function add_to_activate {
  if [ ! -f $CONDA_INIT ]; then
    echo > $CONDA_INIT
  fi
  for i in "${CONTENTS[@]}"; do
    if [ $(grep "$i" "$CONDA_INIT" | wc -l ) == 0 ]; then
      echo $i >> "$CONDA_INIT"
    fi
  done
}

############ install additional packages
source activate aquas_chipseq

if [ $? != 0 ]; then
  echo Anaconda environment not found!
  exit
fi

CONDA_BIN=$(dirname $(which activate))
CONDA_EXTRA="$CONDA_BIN/../extra"
CONDA_ACTIVATE_D="$CONDA_BIN/../etc/conda/activate.d"
CONDA_INIT="$CONDA_ACTIVATE_D/init.sh"
mkdir -p $CONDA_EXTRA $CONDA_ACTIVATE_D

## GRAPHVIZ
# graphviz on bioconda is buggy (GLIBC 2.14 error)
conda uninstall graphviz -y
conda install graphviz -c defaults --override-channels -y

### BDS
mkdir -p $HOME/.bds
cp bds.config $HOME/.bds/
CONTENTS=("export PATH=\$PATH:\$HOME/.bds")
add_to_activate

## PICARDROOT
cd "$CONDA_BIN/../share/picard-1.97-0/"
ln -s picard-1.97.jar picard.jar
CONTENTS=("export PICARDROOT=$CONDA_BIN/../share/picard-1.97-0")
add_to_activate

#### install Wiggler (for generating signal tracks)
cd $CONDA_EXTRA
wget https://align2rawsignal.googlecode.com/files/align2rawsignal.2.0.tgz -N
tar zxvf align2rawsignal.2.0.tgz
rm -f align2rawsignal.2.0.tgz
CONTENTS=("export PATH=\$PATH:$CONDA_EXTRA/align2rawsignal/bin")
add_to_activate

#### install MCR (560MB)
cd $CONDA_EXTRA
wget http://www.broadinstitute.org/~anshul/softwareRepo/MCR2010b.bin -N
chmod 755 MCR2010b.bin
echo '-P installLocation="'${CONDA_EXTRA}'/MATLAB_Compiler_Runtime"' > tmp.stdin
./MCR2010b.bin -silent -options "tmp.stdin"
rm -f tmp.stdin
rm -f MCR2010b.bin
CONTENTS=(
"MCRROOT=${CONDA_EXTRA}/MATLAB_Compiler_Runtime/v714" 
"LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRROOT}/runtime/glnxa64" 
"LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRROOT}/bin/glnxa64" 
"MCRJRE=\${MCRROOT}/sys/java/jre/glnxa64/jre/lib/amd64" 
"LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRJRE}/native_threads" 
"LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRJRE}/server" 
"LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRJRE}" 
"XAPPLRESDIR=\${MCRROOT}/X11/app-defaults" 
"export LD_LIBRARY_PATH" 
"export XAPPLRESDIR")
add_to_activate


#### install R 2.x.x packages
cd $CONDA_EXTRA
wget http://mitra.stanford.edu/kundaje/software/spp_1.13.tar.gz -N
echo > tmp.R
echo 'withCallingHandlers(install.packages("snow", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
echo 'withCallingHandlers(install.packages("snowfall", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
echo 'withCallingHandlers(install.packages("bitops", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
echo 'withCallingHandlers(install.packages("caTools", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
echo 'source("http://bioconductor.org/biocLite.R")' >> tmp.R
echo 'biocLite("Rsamtools",suppressUpdates=TRUE)' >> tmp.R
echo 'withCallingHandlers(install.packages("./spp_1.13.tar.gz"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
export RHOME=$(R RHOME)
Rscript tmp.R
rm -f tmp.R spp_1.13.tar.gz
CONTENTS=("export RHOME=\$(R RHOME)")
add_to_activate

#### install run_spp.R (Anshul's phantompeakqualtool)
cd $CONDA_EXTRA
wget https://phantompeakqualtools.googlecode.com/files/ccQualityControl.v.1.1.tar.gz -N
tar zxvf ccQualityControl.v.1.1.tar.gz
rm -f ccQualityControl.v.1.1.tar.gz
chmod 755 -R phantompeakqualtools
CONTENTS=("export PATH=\$PATH:$CONDA_EXTRA/phantompeakqualtools")
add_to_activate

source deactivate



#source activate aquas_chipseq_py3
#
#if [ $? != 0 ]; then
#  echo Anaconda environment not found!
#  exit
#fi
#
#CONDA_BIN=$(dirname $(which activate))
#CONDA_EXTRA="$CONDA_BIN/../extra"
#mkdir -p $CONDA_EXTRA
#
## uninstall IDR 2.0.2 and install beta
#conda uninstall idr -y
#cd $CONDA_EXTRA
#git clone https://github.com/nboley/idr
#cd idr
#python3 setup.py install
#cd $CONDA_EXTRA
#rm -rf idr
#
#source deactivate

