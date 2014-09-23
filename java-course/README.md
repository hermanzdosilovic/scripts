Java Course
===========
[Java Course](http://java.zemris.fer.hr/) originally called *Osnove programskog jezika Java* is a great Java course that I attended in my second semester at [Faculty of Electrical Engineering and Computing (FER)](http://www.fer.unizg.hr/en) in [Zagreb](http://en.wikipedia.org/wiki/Zagreb).

On the course we needed to use several tools for [code analysis](http://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis), few for [TDD](http://en.wikipedia.org/wiki/Test-driven_development) and few for web application development.

After the course I swiched my OS few times and every time I found myself downloading and setuping these tools. And after my third setup by hand it became a pain in the butt, so I decided to write a little bash script that will download and setup these tools for me.

###Attention: OS X and Linux only!

Who is this for
----------------
* For every future student who will attend the same Java Course as I did.
* For everybody who needs to use these tools **now** and does not want to do it by hand.
* For me. :P

What can you install with this script
-------------------------------------
This script includes following tools:

* [Apache Ant 1.9.4](http://ant.apache.org/) 
* [Apache Tomcat 8.0.9](http://tomcat.apache.org/)
* [Apache Maven 3.2.2](http://maven.apache.org/)
* [Checkstyle 5.7](http://checkstyle.sourceforge.net/)
* [Findbugs 3.0.0](http://findbugs.sourceforge.net/)
* [Gradle 2.0](http://www.gradle.org/)
* [Hamcrest 1.3](https://github.com/hamcrest/JavaHamcrest)
* [Jacoco 0.7.1](http://www.eclemma.org/jacoco/)
* [Junit 4.11](http://junit.org/)
* [Mockito 1.9.5](https://code.google.com/p/mockito/)
* [PMD 5.1.2](http://pmd.sourceforge.net/)
* [Xalan-Java 2.7.1](http://xml.apache.org/xalan-j/)

How to run
----------
Please follow these steps:

1. Get the project
2. Open *java-course* folder in your terminal
3. Run the script
4. Logout and login again

###1. Get the project

 [Download](https://github.com/hermanzdosilovic/scripts/archive/master.zip) the project to your computer.

or

Clone git repository with this command:
	
		git clone https://github.com/hermanzdosilovic/scripts.git

If you downloaded the project make sure that you extract .zip file that you got. If you cloned repository you do not have to do that.

###2. Open *java-course* folder in your terminal

1. Open project in your terminal. I now assume that you can see *java-course* folder when you type `ls`.
2. Type `cd java-course` to position yourself into *java-course* folder.

###3. Run the script

I now assume that you are in *java-course* folder. If so, run this command to start script:

	sudo ./tools.sh


**You will need to enter your administrator password to run this script.**

The script will start downloading and extracting your tools. It will take a few minutes.
###4. Logout and login again
Just do it. :)

Important notes
---------------
Tools will be installed in `/usr/local/bin` and the paths that every tool needs to work properly will be written in `~/.profile`.

If you want you can change this default locations.

* If you want to change location where tools will be installed, edit:

	* [`DEST`](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh#L18) variable that specifies where tools will be installed.
* If you want to change location where paths will be written, edit: 

	* [`CONFIG_PATH`](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh#L20) variable that specifies where paths will be written.

For additional changes that you would like to make in your installation package, please check the [`tools.sh`](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh) for more information.

###Skip some tools
If you want you can skip installing some tools by commenting specific lines of the script. For example, if you do not want to install [Gradle 2.0](http://www.gradle.org/) comment following lines:

* [Setting up a download link](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh#L6)
* [Downloading and extracting gradle](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh#L47-L53)
* [Setting up gradle](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh#L116-L122)
* [Remove unused gradle files](https://github.com/hermanzdosilovic/scripts/blob/master/java-course/tools.sh#L116-L122)

The same logic applies to other tools. :)

Testing Machines
----------------
I have tested this script on these machines:

* Ubuntu 12.04, 12.10, 13.04, 13.10, 14.04
* Linux Mint 16, 17
* OS X 10.9.5

