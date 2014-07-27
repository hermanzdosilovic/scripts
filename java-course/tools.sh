#!/bin/bash

# setup download links
export ANT_DOWNLOAD_LINK=http://ftp.carnet.hr/misc/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz
export M2_DOWNLOAD_LINK=http://ftp.carnet.hr/misc/apache/maven/maven-3/3.2.2/binaries/apache-maven-3.2.2-bin.tar.gz
export GRADLE_DOWNLOAD_LINK=https://services.gradle.org/distributions/gradle-2.0-all.zip
export CS_DOWNLOAD_LINK=http://sourceforge.net/projects/checkstyle/files/latest/download?source=files
export XALAN_DOWNLOAD_LINK=http://archive.apache.org/dist/xml/xalan-j/xalan-j_2_7_1-bin.zip
export PMD_DOWNLOAD_LINK=http://sourceforge.net/projects/pmd/files/pmd/5.1.2/pmd-bin-5.1.2.zip/download
export FINDBUGS_DOWNLOAD_LINK=http://sourceforge.net/projects/findbugs/files/findbugs/3.0.0/findbugs-3.0.0.tar.gz/download
export JUNIT_DOWNLOAD_LINK=http://search.maven.org/remotecontent?filepath=junit/junit/4.11/junit-4.11.jar
export HAMCREST_DOWNLOAD_LINK=http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
export JACOCO_DOWNLOAD_LINK=http://search.maven.org/remotecontent?filepath=org/jacoco/jacoco/0.7.1.201405082137/jacoco-0.7.1.201405082137.zip
export MOCKITO_DOWNLOAD_LINK=https://mockito.googlecode.com/files/mockito-all-1.9.5.jar

# setup destination
export DEST=/usr/local/bin	# destination where all tools will be installed
export DIR_INIT=$(pwd)	# desination of all tools before install
export CONFIG_PATH=~/.profile	# destination where path will be written

export ANT_INIT=apache-ant	# name of apache ant folder
export M2_INIT=apache-maven	# name of apache maven folder
export GRADLE_INIT=gradle	# name of gradle folder
export CS_INIT=checkstyle	# name of chechstyle folder
export XALAN_INIT=xalan	# name of xalan folder
export PMD_INIT=pmd	# name of pmd folder
export FINDBUGS_INIT=findbugs	# name of findbugs folder
export JUNIT_INIT=junit.jar # name of junit jar
export HAMCREST_INIT=hamcrest-core.jar	# name of hamcrest jar
export DIRNAME=junit	# name of folder where $HAMCREST_INIT and $JUNIT_INIT will be installed
export JACOCO_INIT=jacoco	# name of jacoco folder
export MOCKITO_INIT=mockito.jar	# name of mockito jar
export MOCKITO_DIR=mockito	# name of folder where mockito will be installed

# download and extract apache-ant
wget $ANT_DOWNLOAD_LINK -O $ANT_INIT.tar.gz
mkdir $ANT_INIT
tar -xvf $ANT_INIT.tar.gz -C $ANT_INIT --strip-components 1

# download and extract apache-maven
wget $M2_DOWNLOAD_LINK -O $M2_INIT.tar.gz
mkdir $M2_INIT
tar -xvf $M2_INIT.tar.gz -C $M2_INIT --strip-components 1

# download and extract gradle
wget $GRADLE_DOWNLOAD_LINK -O $GRADLE_INIT.zip
unzip $GRADLE_INIT.zip -d $GRADLE_INIT-tmp
export TMP_DIR=$(ls $GRADLE_INIT-tmp)
mv $GRADLE_INIT-tmp/$TMP_DIR $GRADLE_INIT-tmp/$GRADLE_INIT
mv $GRADLE_INIT-tmp/$GRADLE_INIT .
rm -rf $GRADLE_INIT-tmp

# download and extract checkstyle
wget $CS_DOWNLOAD_LINK -O $CS_INIT.tar.gz
mkdir $CS_INIT
tar -xvf $CS_INIT.tar.gz -C $CS_INIT --strip-components 1

# download and extract xalan
wget $XALAN_DOWNLOAD_LINK -O $XALAN_INIT.zip
unzip $XALAN_INIT.zip -d $XALAN_INIT-tmp
export TMP_DIR=$(ls $XALAN_INIT-tmp)
mv $XALAN_INIT-tmp/$TMP_DIR $XALAN_INIT-tmp/$XALAN_INIT
mv $XALAN_INIT-tmp/$XALAN_INIT .
rm -rf $XALAN_INIT-tmp

# download and extract pmd
wget $PMD_DOWNLOAD_LINK -O $PMD_INIT.zip
unzip $PMD_INIT.zip -d $PMD_INIT-tmp
export TMP_DIR=$(ls $PMD_INIT-tmp)
mv $PMD_INIT-tmp/$TMP_DIR $PMD_INIT-tmp/$PMD_INIT
mv $PMD_INIT-tmp/$PMD_INIT .
rm -rf $PMD_INIT-tmp

# download and extract findbugs
wget $FINDBUGS_DOWNLOAD_LINK -O $FINDBUGS_INIT.tar.gz
mkdir $FINDBUGS_INIT
tar -xvf $FINDBUGS_INIT.tar.gz -C $FINDBUGS_INIT --strip-components 1

# download junit and hamcrest
wget $JUNIT_DOWNLOAD_LINK -O $JUNIT_INIT
wget $HAMCREST_DOWNLOAD_LINK -O $HAMCREST_INIT

# download anx extract jacoco
wget $JACOCO_DOWNLOAD_LINK -O $JACOCO_INIT.zip
unzip $JACOCO_INIT.zip -d $JACOCO_INIT

# download mocikto
wget $MOCKITO_DOWNLOAD_LINK -O $MOCKITO_INIT

# create destination directory - no error if exsist
mkdir -p $DEST

# setting up apache-ant
sudo cp -rf $DIR_INIT/$ANT_INIT $DEST
export ANT_HOME=$DEST/$ANT_INIT
echo "export ANT_HOME=$DEST/$ANT_INIT" >> $CONFIG_PATH
export PATH=$ANT_HOME/bin:$PATH
echo "export PATH=$ANT_HOME/bin:$PATH" >> $CONFIG_PATH

# setting up apache-maven
sudo cp -rf $DIR_INIT/$M2_INIT $DEST
export M2_HOME=$DEST/$M2_INIT
echo "export M2_HOME=$DEST/$M2_INIT" >> $CONFIG_PATH
export PATH=$M2_HOME/bin:$PATH
echo "export PATH=$M2_HOME/bin:$PATH" >> $CONFIG_PATH

# setting up gradle
sudo cp -rf $DIR_INIT/$GRADLE_INIT $DEST
export GRADLE_HOME=$DEST/$GRADLE_INIT
echo "export GRADLE_HOME=$DEST/$GRADLE_INIT" >> $CONFIG_PATH
export PATH=$GRADLE_HOME/bin:$PATH
echo "export PATH=$GRADLE_HOME/bin:$PATH" >> $CONFIG_PATH

# setting up checkstyle
sudo cp -rf $DIR_INIT/$CS_INIT $DEST

# setting up xalan
sudo cp -rf $DIR_INIT/$XALAN_INIT $DEST

# setting up pmd
sudo cp -rf $DIR_INIT/$PMD_INIT $DEST

# setting up findbugs
sudo cp -rf $DIR_INIT/$FINDBUGS_INIT $DEST
export FINDBUGS_HOME=$DEST/$FINDBUGS_INIT
echo "export FINDBUGS_HOME=$DEST/$FINDBUGS_INIT" >> $CONFIG_PATH
export PATH=$FINDBUGS_HOME/bin:$PATH
echo "export PATH=$FINDBUGS_HOME/bin:$PATH" >> $CONFIG_PATH

# setting up junit
sudo mkdir $DEST/$DIRNAME
sudo cp $DIR_INIT/$JUNIT_INIT $DEST/$DIRNAME
sudo chmod +x $DEST/$DIRNAME/$JUNIT_INIT

sudo cp $DIR_INIT/$HAMCREST_INIT $DEST/$DIRNAME
sudo chmod +x $DEST/$DIRNAME/$HAMCREST_INIT

# setting up jacoco
sudo cp -rf $DIR_INIT/$JACOCO_INIT $DEST

# setting up mockito
sudo mkdir $DEST/$MOCKITO_DIR
sudo cp $DIR_INIT/$MOCKITO_INIT $DEST/$MOCKITO_DIR
sudo chmod +x $DEST/$MOCKITO_DIR/$MOCKITO_INIT

# remove unused ant
rm -rf $ANT_INIT
rm $ANT_INIT.tar.gz

# remove unused maven
rm -rf $M2_INIT
rm $M2_INIT.tar.gz

# remove unused gradle
rm -rf $GRADLE_INIT
rm $GRADLE_INIT.zip

# remove unused checkstyle
rm -rf $CS_INIT
rm $CS_INIT.tar.gz

# remove unused xalan
rm -rf $XALAN_INIT
rm $XALAN_INIT.zip

# remove unused pmd
rm -rf $PMD_INIT
rm $PMD_INIT.zip

# remove unused findbugs
rm -rf $FINDBUGS_INIT
rm $FINDBUGS_INIT.tar.gz

# remove unused junit and hamcrest
rm $JUNIT_INIT
rm $HAMCREST_INIT

# remove unused jocooc
rm -rf $JACOCO_INIT
rm $JACOCO_INIT.zip

# remove unused mockito
rm $MOCKITO_INIT

echo "--- Tools are now installed in $DEST and paths are written in $CONFIG_PATH ---"
echo "--- All done ---"