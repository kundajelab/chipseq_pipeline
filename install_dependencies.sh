################ local installation ##################

# DO NOT CHANGE NAMING OF SOFTWARE DIRECTORY!
SOFTWARE=$HOME/software_bds
BASHRC=$HOME/add_to_bashrc

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

SOFTWARES_APT_GET=(
build-essential
zlib1g-dev
ncurses-dev
gfortran
libboost-all-dev
openssl libssl-dev
libfreetype6-dev
liblapack-dev
)

echo
echo Checking softwares on your system...
echo

EXIT=0
for i in "${SOFTWARES_APT_GET[@]}"; do
  if [ $(dpkg -l | awk '{print $2;}' | grep -Fx $i | wc -l) == 0 ]; then
    echo
    echo " * $i found on your system."
  else
    echo
    echo " * $i not found your system."
    echo "   Please install $i using the following commmand or ask administrator."
    echo "   ============================================================="
    echo "   sudo apt-get install $i"
    echo "   ============================================================="
    EXIT=1
  fi
done

if [ $(which git | wc -l) == 0 ]; then  
  echo
  echo " * Git not found your system."
  echo "   Please install git using the following commmand or ask administrator."
  echo "   ============================================================="
  echo "   sudo apt-get install git"
  echo "   ============================================================="
  echo "   You can also install git on your local directory."
  echo "   (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)"
  EXIT=1
else
  echo
  echo " * Git found your system."
fi

NEED_JAVA_INSTALL=0
if [ $(which java | wc -l) == 0 ]; then  
  echo
  echo " * Java not found your system."
  EXIT=1
  NEED_JAVA_INSTALL=1
else
  JAVA_VER=$(java -version 2>&1 | grep "java version" | cut -d'"' -f2 | cut -d'.' -f1-2)
  echo
  echo " * Java found your system (version: ${JAVA_VER})."
  if [[ (( ${JAVA_VER} < 1.7 )) ]]; then
    echo "   Java version is too low. Version needs to be >= 1.7"
    EXIT=1
    NEED_JAVA_INSTALL=1
  fi
fi

if [ ${NEED_JAVA_INSTALL} == 1 ]; then
  echo "   Please install java using the following commmand or ask administrator."
  echo "   ============================================================="
  echo "   sudo apt-get install openjdk-7-jre"
  echo "   ============================================================="
  echo "   You can also install java (jre version >= 1.7) on your local directory."
  echo "   (http://java.com/en/download/manual.jsp?locale=en)"
fi

if [ $EXIT == 1 ]; then
  echo
  echo "WARNING!!"
  echo
  echo "Some of the softwares are not installed on your system."
  echo "We strongly recommend to install all softwares listed above and re-run install_dependencies.sh."
  echo 
  echo "However, you can proceed if you have equivalent softwares locally installed on your system."
  echo "Otherwise, compilation of some bio-softwares will fail."
  echo 
  read -p "Are you sure that you want to proceed? [yes/no] " yn
  case $yn in
      yes ) echo "YES";;
      * ) exit;;
  esac
fi 

if [ ! -f $HOME/.bashrc ]; then
  echo > $HOME/.bashrc
fi 

BASHRC_CONTENTS=(
"export _JAVA_OPTIONS=\"-Xms256M -Xmx512M -XX:ParallelGCThreads=1\""
"export MAX_JAVA_MEM=\"8G\""
"export MALLOC_ARENA_MAX=4"
"export PATH=\$PATH:\$HOME/.bds"
)

echo 
echo "Adding following lines to your $HOME/.bashrc ..."
for i in "${BASHRC_CONTENTS[@]}"; do
  if [ $(grep "$i" "$HOME/.bashrc" | wc -l ) == 0 ]; then
    echo $i
    echo $i >> $HOME/.bashrc
  fi
done

echo
echo "=============================================================================="
echo "Starting automatic installation for dependencies for ChIP-seq pipeline."
echo "Make sure you have enough disk space (at least 3GB) on your file system."
echo "All dependencies will be installed under $SOFTWARE."
echo "Once installation is done, we recommend to add $BASHRC to \$HOME/.bashrc or \$HOME/.bash_profile ."
echo "=============================================================================="
read -p "Press [Enter] key to continue..."
echo

mkdir -p $SOFTWARE
echo "# Add the following lines to your $HOME/.bashrc or $HOME/.bash_profile " > $BASHRC

# Local installation for BigDataScript (latest)
cd $HOME
wget https://github.com/pcingola/BigDataScript/blob/master/distro/bds_Linux.tgz?raw=true -O bds_Linux.tgz --no-check-certificate
tar zxvf bds_Linux.tgz
rm -f bds_Linux.tgz
cp $SCRIPTDIR/bds.config $HOME/.bds/
echo "" >> $BASHRC
echo "# Path for BigDataScript (latest)" > $BASHRC
echo "export PATH=\$PATH:\$HOME/.bds/" >> $BASHRC

# Local installation for bwa (0.7.3)
cd $SOFTWARE
git clone https://github.com/lh3/bwa bwa-0.7.3
cd bwa-0.7.3
git checkout tags/0.7.3
make
echo "" >> $BASHRC
echo "# Path for bwa (0.7.3)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/bwa-0.7.3" >> $BASHRC

# Local installation for samtools (0.1.19)
cd $SOFTWARE
git clone https://github.com/samtools/samtools samtools-0.1.19
cd samtools-0.1.19
git checkout tags/0.1.19
make
echo "" >> $BASHRC
echo "# Path for samtools (0.1.19)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/samtools-0.1.19" >> $BASHRC

# Local installation for bedtools (2.19.1)
cd $SOFTWARE
wget http://pkgs.fedoraproject.org/repo/pkgs/BEDTools/bedtools-2.19.1.tar.gz/58de5377c3fb1bc1ab5a2620cf48f846/bedtools-2.19.1.tar.gz
tar zxvf bedtools-2.19.1.tar.gz
rm -f bedtools-2.19.1.tar.gz
cd bedtools2-2.19.1
make
echo "" >> $BASHRC
echo "# Path for bedtools (2.19.1)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/bedtools2-2.19.1/bin" >> $BASHRC

# Local installation for UCSC tools
cd $SOFTWARE
mkdir ucsc_tools
cd ucsc_tools
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/wigToBigWig
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bedGraphToBigWig
chmod 755 *
echo "" >> $BASHRC
echo "# Path for UCSC tools" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/ucsc_tools" >> $BASHRC

# Local installation for PICARD tools (1.92)
cd $SOFTWARE
wget http://mitra.stanford.edu/kundaje/software/picard-tools-1.92.tar.gz
tar zxvf picard-tools-1.92.tar.gz
rm -f picard-tools-1.92.tar.gz
#wget http://sourceforge.net/projects/picard/files/picard-tools/1.92/picard-tools-1.92.zip/download -O picard-tools-1.92.zip
#unzip picard-tools-1.92.zip
#rm -f picard-tools-1.92.zip
cd picard-tools-1.92
chmod 755 *
echo "" >> $BASHRC
echo "# Path for PICARd tools" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/picard-tools-1.92" >> $BASHRC
echo "export PICARDROOT=$SOFTWARE/picard-tools-1.92" >> $BASHRC

# Local installation for run_spp.R (Anshul's phantompeakqualtool)
cd $SOFTWARE
wget https://phantompeakqualtools.googlecode.com/files/ccQualityControl.v.1.1.tar.gz
tar zxvf ccQualityControl.v.1.1.tar.gz
rm -f ccQualityControl.v.1.1.tar.gz
chmod 755 phantompeakqualtools/*
echo "" >> $BASHRC
echo "# Path for run_spp.R (Anshul's phantompeakqualtool)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/phantompeakqualtools" >> $BASHRC

# Local installation instruction for R (2.15.1) and relevant packages
cd $SOFTWARE
wget http://cran.r-project.org/src/base/R-2/R-2.15.1.tar.gz
tar zxvf R-2.15.1.tar.gz
rm -f R-2.15.1.tar.gz
cd R-2.15.1
#./configure --prefix=$HOME/R --with-readline=no --with-x=no --enable-R-static-lib
./configure --with-readline=no --with-x=no --enable-R-static-lib
make
cd $SOFTWARE
#wget http://compbio.med.harvard.edu/Supplements/ChIP-seq/spp_1.10.tar.gz
echo > tmp.R
  echo 'install.packages("snow", repos="http://cran.us.r-project.org")' >> tmp.R
  echo 'install.packages("snowfall", repos="http://cran.us.r-project.org")' >> tmp.R
  echo 'install.packages("bitops", repos="http://cran.us.r-project.org")' >> tmp.R
  echo 'install.packages("caTools", repos="http://cran.us.r-project.org")' >> tmp.R
#  echo 'install.packages("./spp_1.10.tar.gz")' >> tmp.R
  echo 'install.packages("./phantompeakqualtools/spp_1.10.1.tar.gz")' >> tmp.R
$SOFTWARE/R-2.15.1/bin/Rscript tmp.R
rm -f tmp.R
echo "" >> $BASHRC
echo "# Path for R (2.15.1)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/R-2.15.1/bin" >> $BASHRC

#LAPACK
mkdir -p $SOFTWARE/blas
cd $SOFTWARE/blas
wget http://www.netlib.org/lapack/lapack.tgz
tar xzf lapack.tgz
rm -f lapack.tgz
cd lapack-*/
cp INSTALL/make.inc.gfortran make.inc          # On Linux with lapack-3.2.1 or newer
make lapacklib
make clean

echo "" >> $BASHRC
echo "# LAPACK" >> $BASHRC
eecho "export LAPACK=$SOFTWARE/blas/lapack-*/liblapack.a" >> $BASHRC

# Local installation instruction for Python (3.4.3) and relevant packages (for Nathan Boley's IDR)
cd $SOFTWARE
wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz
tar zxvf Python-3.4.3.tgz
rm -f Python-3.4.3.tgz
cd Python-3.4.3
./configure --prefix=$SOFTWARE/python3.4
make altinstall prefix=$SOFTWARE/python3.4 exec-prefix=$SOFTWARE/python3.4
wget http://cython.org/release/Cython-0.22.tar.gz
tar zxvf Cython-0.22.tar.gz
cd Cython-0.22
$SOFTWARE/python3.4/bin/python3.4 setup.py install --prefix=$SOFTWARE/python3.4
ln -s $SOFTWARE/python3.4/bin/python3.4 $SOFTWARE/python3.4/bin/python3
cd $SOFTWARE
$SOFTWARE/python3.4/bin/pip3.4 install --install-option="--prefix=$SOFTWARE/python3.4" numpy
$SOFTWARE/python3.4/bin/pip3.4 install --install-option="--prefix=$SOFTWARE/python3.4" matplotlib
$SOFTWARE/python3.4/bin/pip3.4 install --install-option="--prefix=$SOFTWARE/python3.4" scipy
echo "" >> $BASHRC
echo "# Path for python3" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/python3.4/bin" >> $BASHRC
echo "export PYTHONPATH=$SOFTWARE/python3.4/lib/python3.4/site-packages:\$PYTHONPATH">> $BASHRC

# Local installation instruction for Nathan Boley's IDR
cd $SOFTWARE
git clone --recursive https://github.com/nboley/idr.git
cd idr
$SOFTWARE/python3.4/bin/python3.4 setup.py install --prefix=$SOFTWARE/python3.4
ln -s $SOFTWARE/python3.4/bin/python3.4 $SOFTWARE/python3.4/bin/python3
echo "" >> $BASHRC
echo "# Path for IDR (written by Nathan Boley)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/idr/bin" >> $BASHRC

# Local installation instruction for Anshul Kundaje's IDR
cd $SOFTWARE
wget https://sites.google.com/site/anshulkundaje/projects/idr/idrCode.tar.gz?attredirects=0 -O idrCode.tar.gz
tar zxvf idrCode.tar.gz
rm -f idrCode.tar.gz
echo "" >> $BASHRC
echo "# Path for IDR (written by Anshul Kundaje)" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/idrCode" >> $BASHRC

# Local installation instruction for Python (2.7.2) and relevant packages (for macs2)
cd $SOFTWARE
wget https://www.python.org/ftp/python/2.7.2/Python-2.7.2.tgz
tar zxvf Python-2.7.2.tgz
rm -f Python-2.7.2.tgz
cd Python-2.7.2
./configure --prefix=$SOFTWARE/python2.7
make altinstall prefix=$SOFTWARE/python2.7 exec-prefix=$SOFTWARE/python2.7
wget http://cython.org/release/Cython-0.22.tar.gz
tar zxvf Cython-0.22.tar.gz
cd Cython-0.22
$SOFTWARE/python2.7/bin/python2.7 setup.py install --prefix=$SOFTWARE/python2.7
ln -s $SOFTWARE/python2.7/bin/python2.7 $SOFTWARE/python2.7/bin/python2
cd $SOFTWARE
cd python2.7/bin
get https://bootstrap.pypa.io/get-pip.py
./python2 get-pip.py
$SOFTWARE/python2.7/bin/pip2.7 install --install-option="--prefix=$SOFTWARE/python2.7" numpy
echo "" >> $BASHRC
echo "# Path for python2" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/python2.7/bin" >> $BASHRC
echo "export PYTHONPATH=$SOFTWARE/python2.7/lib/python2.7/site-packages:\$PYTHONPATH">> $BASHRC

# Local installation instruction for MACS2
cd $SOFTWARE
git clone https://github.com/taoliu/MACS/
cd MACS
$SOFTWARE/python2.7/bin/python2.7 setup_w_cython.py install --prefix=$SOFTWARE/python2.7
chmod 755 $SOFTWARE/MACS/bin/*
echo "" >> $BASHRC
echo "# Path for MACS2" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/MACS/bin" >> $BASHRC

# Local installation instruction for gem 
cd $SOFTWARE
wget http://cgs.csail.mit.edu/gem/download/gem.v2.6.tar.gz
tar zxvf gem.v2.6.tar.gz
rm -f gem.v2.6.tar.gz
cd gem
chmod 755 $SOFTWARE/gem/*.jar
echo "" >> $BASHRC
echo "# Path for gem" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/gem" >> $BASHRC
echo "export GEMROOT=$SOFTWARE/gem" >> $BASHRC
echo "export GEM=$SOFTWARE/gem/gem.jar" >> $BASHRC

# Local installation instruction for Wiggler (for generating signal tracks)
cd $SOFTWARE
wget https://align2rawsignal.googlecode.com/files/align2rawsignal.2.0.tgz
tar zxvf align2rawsignal.2.0.tgz
rm -f align2rawsignal.2.0.tgz
echo "" >> $BASHRC
echo "# Path for Wiggler" >> $BASHRC
echo "export PATH=\$PATH:$SOFTWARE/align2rawsignal/bin" >> $BASHRC
wget http://www.broadinstitute.org/~anshul/softwareRepo/MCR2010b.bin
chmod 755 MCR2010b.bin
echo 1 > tmp.stdin
echo $SOFTWARE"/MATLAB_Compiler_Runtime" >> tmp.stdin
echo 1 >> tmp.stdin
echo 1 >> tmp.stdin
echo 3 >> tmp.stdin
./MCR2010b.bin -console < tmp.stdin
rm -f tmp.stdin
rm -f MCR2010b.bin
echo "" >> $BASHRC
echo "# Path for MCR2010b.bin" >> $BASHRC
echo "MCRROOT=$SOFTWARE/MATLAB_Compiler_Runtime/v714" >> $BASHRC
echo "LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRROOT}/runtime/glnxa64" >> $BASHRC
echo "LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRROOT}/bin/glnxa64" >> $BASHRC
echo "MCRJRE=\${MCRROOT}/sys/java/jre/glnxa64/jre/lib/amd64" >> $BASHRC
echo "LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRJRE}/native_threads" >> $BASHRC
echo "LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRJRE}/server" >> $BASHRC
echo "LD_LIBRARY_PATH=\${LD_LIBRARY_PATH}:\${MCRJRE}" >> $BASHRC
echo "XAPPLRESDIR=\${MCRROOT}/X11/app-defaults" >> $BASHRC
echo "export LD_LIBRARY_PATH" >> $BASHRC
echo "export XAPPLRESDIR" >> $BASHRC


# WARNING
echo
echo
echo Done Installing all dependencies for ChIP-Seq pipeline
echo Created $BASHRC
echo
echo IMPORTANT!
echo
echo We recommend to add $BASHRC to your $HOME/.bashrc or $HOME/.bash_profile
echo



