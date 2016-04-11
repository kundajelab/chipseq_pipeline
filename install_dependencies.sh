#!/bin/bash

############ install in conda env.
conda config --add channels r
conda config --add channels bioconda
conda config --add channels astro

conda create -n aquas_chipseq --file requirements.txt -y
conda create -n aquas_chipseq_py3 --file requirements_py3.txt -y


############ install additional packages
source activate aquas_chipseq

CONDA_ACTIVATE=$(which activate)
CONDA_BIN=$(dirname $(which activate))
CONDA_EXTRA="$CONDA_BIN/extras"

mkdir -p $CONDA_EXTRA

function add_to_activate {
  for i in "${CONTENTS[@]}"; do
    if [ $(grep "$i" "$CONDA_ACTIVATE" | wc -l ) == 0 ]; then
      echo $i >> "$CONDA_ACTIVATE"
    fi
  done
}

### BDS
CONTENTS=("export PATH=\$PATH:\$HOME/.bds")
add_to_activate

## PICARDROOT
cd "$CONDA_BIN/../share/picard-1.97-0/"
ln -s picard-1.97.jar picard.jar
CONTENTS=("export PICARDROOT=$CONDA_BIN/../share/picard-1.97-0")
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
cd $CONDA_BIN
CONTENTS=("export PATH=\$PATH:$CONDA_EXTRA/phantompeakqualtools")
add_to_activate

#### install Wiggler (for generating signal tracks)
cd $CONDA_EXTRA
wget https://align2rawsignal.googlecode.com/files/align2rawsignal.2.0.tgz -N
tar zxvf align2rawsignal.2.0.tgz
rm -f align2rawsignal.2.0.tgz
cd $CONDA_BIN
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


source deactivate
