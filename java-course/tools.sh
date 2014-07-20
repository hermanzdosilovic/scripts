#!/bin/bash

# setting up local variables
export DEST=/usr/local	# destination where all tools will be installed
export DIR_INIT=/home/herman/Documents	# desination of all tools before install
export ANT_INIT=apache-ant-1.9.4	# name of apache ant folder
export M2_INIT=apache-maven-3.2.2	# name of apache maven folder
export GRADLE_INIT=gradle-2.0		# name of gradle folder
export CS_INIT=checkstyle-5.7	# name of chechstyle folder
export XALAN_INIT=xalan-j_2_7_1	# name of xalan folder
export PMD_INIT=pmd-bin-5.1.1	# name of pmd folder
export FINDBUGS_INIT=findbugs-3.0.0	# name of findbugs folder
export JUNIT_INIT=junit-4.11.jar	# name of junit jar
export HAMCREST_INIT=hamcrest-core-1.3.jar	# name of hamcrest jar
export DIRNAME=junit-4.11	# name of folder where $HAMCREST_INIT and $JUNIT_INIT will be installed
export JACOCO_INIT=jacoco-0.7.1	# name of jacoco folder
export MOCKITO_INIT=mockito-all-1.9.5.jar	# name of mockito jar
export MOCKITO_DIR=mockito-1.9.5	# name of folder where mockito will be installed

# setting up apache-ant
sudo cp -rf $DIR_INIT/$ANT_INIT $DEST
export ANT_HOME=$DEST/$ANT_INIT
echo "export ANT_HOME=$DEST/$ANT_INIT" >> ~/.profile
export PATH=$ANT_HOME/bin:$PATH
echo "export PATH=$ANT_HOME/bin:$PATH" >> ~/.profile

# setting up apache-maven
sudo cp -rf $DIR_INIT/$M2_INIT $DEST
export M2_HOME=$DEST/$M2_INIT
echo "export M2_HOME=$DEST/$M2_INIT" >> ~/.profile
export PATH=$M2_HOME/bin:$PATH
echo "export PATH=$M2_HOME/bin:$PATH" >> ~/.profile

# setting up gradle
sudo cp -rf $DIR_INIT/$GRADLE_INIT $DEST
export GRADLE_HOME=$DEST/$GRADLE_INIT
echo "export GRADLE_HOME=$DEST/$GRADLE_INIT" >> ~/.profile
export PATH=$GRADLE_HOME/bin:$PATH
echo "export PATH=$GRADLE_HOME/bin:$PATH" >> ~/.profile

# setting up checkstyle
sudo cp -rf $DIR_INIT/$CS_INIT $DEST

# setting up xalan
sudo cp -rf $DIR_INIT/$XALAN_INIT $DEST

# setting up pmd
sudo cp -rf $DIR_INIT/$PMD_INIT $DEST

# setting up findbugs
sudo cp -rf $DIR_INIT/$FINDBUGS_INIT $DEST
export FINDBUGS_HOME=$DEST/$FINDBUGS_INIT
echo "export FINDBUGS_HOME=$DEST/$FINDBUGS_INIT" >> ~/.profile
export PATH=$FINDBUGS_HOME/bin:$PATH
echo "export PATH=$FINDBUGS_HOME/bin:$PATH" >> ~/.profile

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

echo "All done."