################ local installation ##################

if [ "$#" -lt 1 ]
then
  SOFTWARE=$HOME/software_bds
else
  SOFTWARE=$1
fi

echo
echo "Installation Directory: $SOFTWARE"
echo

# DO NOT CHANGE NAMING OF SOFTWARE DIRECTORY!
BASHRC=$HOME/.bashrc
FLAGDIR=$SOFTWARE/flags

mkdir -p $FLAGDIR

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

SOFTWARES_APT_GET=(
build-essential
zlib1g-dev
libncurses5-dev
gfortran
openssl
libssl-dev
libfreetype6-dev
liblapack-dev
pkg-config
poppler-utils
libboost-all-dev
graphviz
libcurl4-openssl-dev
libxp6
)
#libboost-all-dev

SOFTWARES_YUM=(
gcc
gcc-c++
kernel-devel
lapack-devel
libXpm-devel
libXp-devel
libXmu-devel
wget
bc
zlib-devel
ncurses-devel
gcc-gfortran
openssl
openssl-devel
freetype-devel
poppler-utils
boost-devel
graphviz
libcurl-devel
libpng-devel
bzip2
)
#boost-devel

LINUX_ID_LIKE="non-debian,non-fedora"

if [[ $(cat /etc/*-release | grep fedora | wc -l) > 0 ]]; then
  LINUX_ID_LIKE=fedora
fi

if [[ $(cat /etc/*-release | grep debian | wc -l) > 0 ]]; then
  LINUX_ID_LIKE=debian
fi

echo 
echo Found Linux distribution: ${LINUX_ID_LIKE} based.
echo 

echo
echo Checking softwares on your system...
echo


EXIT=0
if [ ${LINUX_ID_LIKE} == debian ]; then

  for i in "${SOFTWARES_APT_GET[@]}"; do
    if [ $(dpkg -l | awk '{print $2;}' | grep $i | wc -l) != 0 ]; then
      echo
      echo " * $i found on your system."
    else
      echo
      echo " * $i not found on your system."
      echo "   Please install $i using the following commmand or ask administrator."
      echo "   ============================================================="
      echo "   sudo apt-get install $i"
      echo "   ============================================================="
      EXIT=1
    fi
  done

elif [ ${LINUX_ID_LIKE} == fedora ]; then
  for i in "${SOFTWARES_YUM[@]}"; do
    if [ $(rpm -q $i  | grep -v "is not installed" | wc -l) != 0 ]; then
      echo
      echo " * $i found on your system."
    else
      echo
      echo " * $i not found on your system."
      echo "   Please install $i using the following commmand or ask administrator."
      echo "   ============================================================="
      if [ $i == "lapack-devel" ]; then
        echo "   # find yum repo for (server-optional) in /etc/yum.repos.d"
        echo "   grep -rl "server-optional" /etc/yum.repos.d"
        echo 
        echo "   # enable the repo (repo name can vary)"
        echo "   vim /etc/yum.repos.d/[ANY_REPO_FOUND]"
        echo 
        echo "   [rhui-REGION-rhel-server-optional]"
        echo "   ..."
        echo "   enabled=1"
        echo
        echo "   # install lapack-devel"
        echo "   sudo yum install lapack-devel" 
      else
        echo "   sudo yum install $i" 
      fi
      echo "   ============================================================="
      EXIT=1
    fi
  done


else
  echo
  echo "Your linux system is not based on Fedora (Red Hat, ...) or Debian (Ubuntu, ...)."
  echo "Installer will fail if you didn't manually install all required softwares."
  echo "List of required softwares: "
  echo "  gcc, gcc-c++, kernel-devel, lapack-devel, libXpm-devel, libXp-devel, libXmu-devel, wget, bc, zlib-devel, ncurses-devel, gcc-gfortran, openssl, openssl-devel, freetype-devel, poppler-utils, boost-devel, graphviz, libcurl-devel, libpng-devel, bzip2"
fi


if [ $(which git | wc -l) == 0 ]; then
  echo
  echo " * Git not found on your system."
  echo "   Please install git using the following commmand or ask administrator."
  echo "   ============================================================="
  if [ ${LINUX_ID_LIKE} == debian ]; then
    echo "   sudo apt-get install git"
  elif [ ${LINUX_ID_LIKE} == fedora ]; then
    echo "   sudo yum install git"
  else
    echo "   Manually install git on your system"
  fi
  echo "   ============================================================="
  echo "   You can also install git on your local directory."
  echo "   (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)"
  EXIT=1
else
  echo
  echo " * Git found on your system."
fi

NEED_JAVA_INSTALL=0
if [ $(which java | wc -l) == 0 ]; then
  echo
  echo " * Java not found on your system."
  EXIT=1
  NEED_JAVA_INSTALL=1
else
  JAVA_VER=$(java -version 2>&1 | grep "version" | cut -d'"' -f2 | cut -d'.' -f1-2)
  echo
  echo " * Java found on your system (version: ${JAVA_VER})."
  if [[ (( ${JAVA_VER} < 1.7 )) ]]; then
    echo "   Java version is too low. Version needs to be >= 1.7"
    echo "   If you have multiple versions of java installed on your system, choose the latest one."
    echo "   ============================================================="
    echo "   sudo update-alternatives --config java"
    echo "   ============================================================="
    EXIT=1
    NEED_JAVA_INSTALL=1
  fi
fi

if [ ${NEED_JAVA_INSTALL} == 1 ]; then
  echo "   Please install java using the following commmand or ask administrator."
  echo "   ============================================================="
  if [ ${LINUX_ID_LIKE} == debian ]; then
    echo "   sudo apt-get install openjdk-8-jre"
    echo ""
    echo "   or"
    echo ""
    echo "   sudo apt-get install openjdk-7-jre"
  elif [ ${LINUX_ID_LIKE} == fedora ]; then
    echo "   sudo yum install java-1.8.0-openjdk"
  fi
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
  echo "If you have trouble with 'sudo apt-get (or yum) install [PACKAGE]', try with 'sudo apt-get (or yum) update' first. "
  echo 
  read -p "Are you sure that you want to proceed? [yes/no] " yn
  case $yn in
      yes ) echo "YES";;
      * ) exit;;
  esac
fi 

if [ ! -f $BASHRC ]; then
  echo > $BASHRC
fi 

FAILED=0

function add_to_bashrc {
  echo 
  echo "Adding following lines to your $BASHRC ..."
  for i in "${CONTENTS[@]}"; do
    if [ $(grep "$i" "$BASHRC" | wc -l ) == 0 ]; then
      echo $i
      echo $i >> $BASHRC
    fi
  done
}

function chk_exit_code {
  if [ $? == 0 ]; then
    echo "." > $1
  else
    echo
    echo =====================================================
    echo Installation has failed due to non-zero exit code!
    echo =====================================================
    echo
    echo "Press [Enter] key to continue..."
    read -p ""
    FAILED=1
  fi
}

CONTENTS=(
"export _JAVA_OPTIONS=\"-Xms256M -Xmx512M -XX:ParallelGCThreads=1\""
"export MAX_JAVA_MEM=\"8G\""
"export MALLOC_ARENA_MAX=4"
"export PATH=\$PATH:\$HOME/.bds"
)
#add_to_bashrc

echo
echo "=============================================================================="
echo "Starting automatic installation for dependencies for ChIP-seq pipeline."
echo "Make sure you have enough disk space (at least 3GB) on your file system."
echo "All dependencies will be installed under $SOFTWARE."
echo "=============================================================================="
echo "Press [Enter] key to continue..."
read -p ""
echo

mkdir -p $SOFTWARE

if [ ! -f $FLAGDIR/BDS ]; then
 cd $SOFTWARE
 git clone https://github.com/pcingola/BigDataScript
 cd BigDataScript
 git checkout tags/v0.9999
 cp distro/bds_Linux.tgz $HOME
 cd $HOME
 tar zxvf bds_Linux.tgz

 chk_exit_code $FLAGDIR/BDS

 cp $SCRIPTDIR/bds.config $HOME/.bds/
 CONTENTS=("export PATH=\$PATH:\$HOME/.bds/")
 add_to_bashrc
fi

if [ ! -f $FLAGDIR/TABIX ]; then
 # local installation for tabix (0.2.6)
 cd $SOFTWARE
 wget https://sourceforge.net/projects/samtools/files/tabix/tabix-0.2.6.tar.bz2/download -O tabix-0.2.6.tar.bz2 -N --no-check-certificate
 tar jxvf tabix-0.2.6.tar.bz2
 rm -f tabix-0.2.6.tar.bz2
 cd tabix-0.2.6
 make

 chk_exit_code $FLAGDIR/TABIX
fi

if [ ! -f $FLAGDIR/BWA ]; then
 # Local installation for bwa (0.7.3)
 cd $SOFTWARE
 git clone https://github.com/lh3/bwa bwa-0.7.3
 cd bwa-0.7.3
 git checkout tags/0.7.3
 make

 chk_exit_code $FLAGDIR/BWA
fi

if [ ! -f $FLAGDIR/SAMTOOLS ]; then
 # Local installation for samtools (0.1.19)
 cd $SOFTWARE
 git clone https://github.com/samtools/samtools samtools-0.1.19
 cd samtools-0.1.19
 git checkout tags/0.1.19
 make

 chk_exit_code $FLAGDIR/SAMTOOLS
fi


if [ ! -f $FLAGDIR/BEDTOOLS ]; then
 # Local installation for bedtools (2.19.1)
 cd $SOFTWARE
 wget http://pkgs.fedoraproject.org/repo/pkgs/BEDTools/bedtools-2.19.1.tar.gz/58de5377c3fb1bc1ab5a2620cf48f846/bedtools-2.19.1.tar.gz -N
 tar zxvf bedtools-2.19.1.tar.gz
 rm -f bedtools-2.19.1.tar.gz
 cd bedtools2-2.19.1
 make

 chk_exit_code $FLAGDIR/BEDTOOLS
fi

if [ ! -f $FLAGDIR/UCSCTOOLS ]; then
 # Local installation for UCSC tools
 cd $SOFTWARE
 mkdir ucsc_tools
 cd ucsc_tools
 wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/wigToBigWig -N
 wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bedGraphToBigWig -N
 wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigInfo -N

 chk_exit_code $FLAGDIR/UCSCTOOLS

 chmod 755 *
fi


if [ ! -f $FLAGDIR/PICARD ]; then
 # Local installation for PICARD tools (1.92)
 cd $SOFTWARE
 wget http://mitra.stanford.edu/kundaje/software/picard-tools-1.92.tar.gz -N
 tar zxvf picard-tools-1.92.tar.gz
 rm -f picard-tools-1.92.tar.gz
 #wget http://sourceforge.net/projects/picard/files/picard-tools/1.92/picard-tools-1.92.zip/download -O picard-tools-1.92.zip -N
 #unzip picard-tools-1.92.zip
 #rm -f picard-tools-1.92.zip

 chk_exit_code $FLAGDIR/PICARD

 cd picard-tools-1.92
 chmod 755 *
fi


if [ ! -f $FLAGDIR/PHANTOMPEAKQUALTOOL ]; then
 # Local installation for run_spp.R (Anshul's phantompeakqualtool)
 cd $SOFTWARE
 wget https://phantompeakqualtools.googlecode.com/files/ccQualityControl.v.1.1.tar.gz -N
 tar zxvf ccQualityControl.v.1.1.tar.gz

 chk_exit_code $FLAGDIR/PHANTOMPEAKQUALTOOL

 rm -f ccQualityControl.v.1.1.tar.gz
 chmod 755 phantompeakqualtools/*
fi

if [ ! -f $FLAGDIR/R2 ]; then
 # Local installation instruction for R (2.15.1) and relevant packages
 cd $SOFTWARE
 wget http://cran.r-project.org/src/base/R-2/R-2.15.1.tar.gz -N
 tar zxvf R-2.15.1.tar.gz
 rm -f R-2.15.1.tar.gz
 cd R-2.15.1
 ./configure --with-readline=no --with-x=no --enable-R-static-lib
 make
 chk_exit_code $FLAGDIR/R2
fi

if [ ! -f $FLAGDIR/R2PACKAGE ]; then
 cd $SOFTWARE
 wget http://mitra.stanford.edu/kundaje/software/spp_1.13.tar.gz -N
 echo > tmp.R
   echo 'withCallingHandlers(install.packages("snow", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
   echo 'withCallingHandlers(install.packages("snowfall", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
   echo 'withCallingHandlers(install.packages("bitops", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
   echo 'withCallingHandlers(install.packages("caTools", repos="http://cran.us.r-project.org"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
   echo 'source("http://bioconductor.org/biocLite.R")' >> tmp.R
   echo 'biocLite("Rsamtools",suppressUpdates=TRUE)' >> tmp.R
   echo 'withCallingHandlers(install.packages("./spp_1.13.tar.gz"),warning = function(w) quit(save = "no", status = 1, runLast = FALSE))' >> tmp.R
 $SOFTWARE/R-2.15.1/bin/Rscript tmp.R

 chk_exit_code $FLAGDIR/R2PACKAGE

 rm -f tmp.R
fi

if [ ! -f $FLAGDIR/LAPACK ]; then
 #LAPACK
 mkdir -p $SOFTWARE/blas
 cd $SOFTWARE/blas
 wget http://www.netlib.org/lapack/lapack.tgz -N
 tar xzf lapack.tgz
 rm -f lapack.tgz
 cd lapack-*/
 cp INSTALL/make.inc.gfortran make.inc          # On Linux with lapack-3.2.1 or newer
 make lapacklib

 chk_exit_code $FLAGDIR/LAPACK

 make clean
fi

if [ ! -f $FLAGDIR/PYTHON2 ]; then
 # Local installation instruction for Python (2.7.2) and relevant packages (for macs2)
 cd $SOFTWARE
 wget https://www.python.org/ftp/python/2.7.2/Python-2.7.2.tgz -N
 tar zxvf Python-2.7.2.tgz
 rm -f Python-2.7.2.tgz
 cd Python-2.7.2
 ./configure --prefix=$SOFTWARE/python2.7 --enable-unicode=ucs4
 make altinstall prefix=$SOFTWARE/python2.7 exec-prefix=$SOFTWARE/python2.7

 chk_exit_code $FLAGDIR/PYTHON2
fi

if [ ! -f $FLAGDIR/PIP2 ]; then
 ln -s $SOFTWARE/python2.7/bin/python2.7 $SOFTWARE/python2.7/bin/python2
 ln -s $SOFTWARE/python2.7/bin/python2.7 $SOFTWARE/python2.7/bin/python
 cd $SOFTWARE
 cd python2.7/bin
 wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate -N
 ./python2 get-pip.py
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --upgrade setuptools

 chk_exit_code $FLAGDIR/PIP2
fi

if [ ! -f $FLAGDIR/CYTHON2 ]; then
 cd $SOFTWARE/Python-2.7.2
 wget http://cython.org/release/Cython-0.22.tar.gz -N
 tar zxvf Cython-0.22.tar.gz
 cd Cython-0.22
 $SOFTWARE/python2.7/bin/python2.7 setup.py install --prefix=$SOFTWARE/python2.7

 chk_exit_code $FLAGDIR/CYTHON2
fi

cd $SOFTWARE

if [ ! -f $FLAGDIR/PYTHON2NUMPY ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --install-option="--prefix=$SOFTWARE/python2.7" numpy
 chk_exit_code $FLAGDIR/PYTHON2NUMPY
fi

if [ ! -f $FLAGDIR/PYTHON2MATPLOTLIB ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --install-option="--prefix=$SOFTWARE/python2.7" matplotlib
 chk_exit_code $FLAGDIR/PYTHON2MATPLOTLIB
fi

if [ ! -f $FLAGDIR/PYTHON2PYSAM ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --install-option="--prefix=$SOFTWARE/python2.7" pysam==0.8.2
 chk_exit_code $FLAGDIR/PYTHON2PYSAM
fi

if [ ! -f $FLAGDIR/PYTHON2PYBIGWIG ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --install-option="--prefix=$SOFTWARE/python2.7" pyBigwig
 chk_exit_code $FLAGDIR/PYTHON2PYBIGWIG
fi

if [ ! -f $FLAGDIR/PYTHON2SCIPY ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --install-option="--prefix=$SOFTWARE/python2.7" scipy
 chk_exit_code $FLAGDIR/PYTHON2SCIPY
fi

if [ ! -f $FLAGDIR/PYTHON2LEVEN ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --install-option="--prefix=$SOFTWARE/python2.7" python-levenshtein
 chk_exit_code $FLAGDIR/PYTHON2LEVEN
fi

if [ ! -f $FLAGDIR/PYTHON2DEEP ]; then
 $SOFTWARE/python2.7/bin/python2.7 -m pip install --upgrade --install-option="--prefix=$SOFTWARE/python2.7" deeptools==1.5.9.1
 chk_exit_code $FLAGDIR/PYTHON2DEEP
fi

if [ ! -f $FLAGDIR/MACS2 ]; then
 # Local installation instruction for MACS2
 cd $SOFTWARE
 git clone https://github.com/taoliu/MACS/
 cd MACS
 $SOFTWARE/python2.7/bin/python2.7 setup_w_cython.py install --prefix=$SOFTWARE/python2.7

 chk_exit_code $FLAGDIR/MACS2

 chmod 755 $SOFTWARE/MACS/bin/*
fi

if [ ! -f $FLAGDIR/DEEPTOOLS ]; then
 # deepTools (signal track gen.)
 cd $SOFTWARE
 git clone https://github.com/fidelram/deepTools
 cd deepTools
 git checkout tags/1.6.0
 $SOFTWARE/python2.7/bin/python2.7 setup.py install --prefix=$SOFTWARE/python2.7
 chk_exit_code $FLAGDIR/DEEPTOOLS
fi

if [ ! -f $FLAGDIR/PYTHON3 ]; then
 # Local installation instruction for Python (3.4.3) and relevant packages (for Nathan Boley's IDR)
 cd $SOFTWARE
 wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz -N
 tar zxvf Python-3.4.3.tgz
 rm -f Python-3.4.3.tgz
 cd Python-3.4.3
 ./configure --prefix=$SOFTWARE/python3.4
 make altinstall prefix=$SOFTWARE/python3.4 exec-prefix=$SOFTWARE/python3.4
 chk_exit_code $FLAGDIR/PYTHON3

 ln -s $SOFTWARE/python3.4/bin/python3.4 $SOFTWARE/python3.4/bin/python3
fi

if [ ! -f $FLAGDIR/CYTHON3 ]; then
 cd $SOFTWARE/Python-3.4.3
 wget http://cython.org/release/Cython-0.22.tar.gz -N
 tar zxvf Cython-0.22.tar.gz
 cd Cython-0.22
 $SOFTWARE/python3.4/bin/python3.4 setup.py install --prefix=$SOFTWARE/python3.4
 chk_exit_code $FLAGDIR/CYTHON3
fi

cd $SOFTWARE

if [ ! -f $FLAGDIR/PYTHON3NUMPY ]; then
 $SOFTWARE/python3.4/bin/easy_install-3.4 numpy
 chk_exit_code $FLAGDIR/PYTHON3NUMPY
fi

if [ ! -f $FLAGDIR/PYTHON3MATPLOTLIB ]; then
 $SOFTWARE/python3.4/bin/easy_install-3.4 matplotlib
 chk_exit_code $FLAGDIR/PYTHON3MATPLOTLIB
fi

if [ ! -f $FLAGDIR/PYTHON3SCIPY ]; then
 $SOFTWARE/python3.4/bin/easy_install-3.4 scipy
 chk_exit_code $FLAGDIR/PYTHON3SCIPY
fi

if [ ! -f $FLAGDIR/IDR2 ]; then
 # Local installation instruction for IDR2( Nathan Boley's IDR )
 cd $SOFTWARE
 git clone --recursive https://github.com/nboley/idr.git
 cd idr
 $SOFTWARE/python3.4/bin/python3.4 setup.py install --prefix=$SOFTWARE/python3.4
 chk_exit_code $FLAGDIR/IDR2
fi

if [ ! -f $FLAGDIR/IDR ]; then
 # Local installation instruction for Anshul Kundaje's IDR
 cd $SOFTWARE
 wget https://sites.google.com/site/anshulkundaje/projects/idr/idrCode.tar.gz?attredirects=0 -O idrCode.tar.gz -N
 tar zxvf idrCode.tar.gz
 chk_exit_code $FLAGDIR/IDR

 rm -f idrCode.tar.gz
fi

if [ ! -f $FLAGDIR/GEM ]; then
 # Local installation instruction for gem 
 cd $SOFTWARE
 #wget http://cgs.csail.mit.edu/gem/download/gem.v2.6.tar.gz -N
 wget http://groups.csail.mit.edu/cgs/gem/download/gem.v2.6.tar.gz -N
 tar zxvf gem.v2.6.tar.gz
 chk_exit_code $FLAGDIR/GEM

 rm -f gem.v2.6.tar.gz
 cd gem
 chmod 755 $SOFTWARE/gem/*.jar
fi

if [ ! -f $FLAGDIR/WIGGLER ]; then
 # Local installation instruction for Wiggler (for generating signal tracks)
 cd $SOFTWARE
 wget https://align2rawsignal.googlecode.com/files/align2rawsignal.2.0.tgz -N
 tar zxvf align2rawsignal.2.0.tgz
 chk_exit_code $FLAGDIR/WIGGLER

 rm -f align2rawsignal.2.0.tgz
fi

if [ ! -f $FLAGDIR/MCR ]; then
 cd $SOFTWARE
 wget http://www.broadinstitute.org/~anshul/softwareRepo/MCR2010b.bin -N
 chmod 755 MCR2010b.bin
 echo '-P installLocation="'$SOFTWARE'/MATLAB_Compiler_Runtime"' > tmp.stdin
 ./MCR2010b.bin -silent -options "tmp.stdin"
 chk_exit_code $FLAGDIR/MCR

 rm -f tmp.stdin
 rm -f MCR2010b.bin
fi


#if [ ! -f $FLAGDIR/PRESEQ ]; then
# cd $SOFTWARE
# git clone https://github.com/smithlabcode/preseq --recursive
# cd preseq
# git checkout tags/v2.0.2
# make
#
# chk_exit_code $FLAGDIR/PRESEQ
#fi


# WARNING
if [ $FAILED == 1 ]; then
  echo 
  echo =====================================================
  echo "Failed to install some dependencies, check your system requirements and re-run the installer."
  echo =====================================================
  echo 
else
  echo
  echo =====================================================
  echo "Done Installing all dependencies for ChIP-Seq pipeline."
  echo =====================================================
  echo
fi



