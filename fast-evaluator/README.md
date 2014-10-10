Fast Evaluator
==============
Fast Evaluator (ev) is a tool for improving your competitive programming workflow.

Ok, but why?
----------------
Lets say that you are solving some problem named *qwerty* and that you are writing your solution in C++ programming language.

Then, probably your file in which you are coding your solution will be `qwerty.cpp`.

Lets now say that problem creator made some dummy test cases for you to check your solution. We will call those test cases `a` and `b`. Moreover, if you found some boundary test cases you would like to write them down and check your solution against them too. Lets make those boundary test cases. We will call them `c` and `d`.

Now, your current workflow probably looks something like this:

1. Read and understand problem statement.
2. Code your solution in `qwerty.cpp`.
3. Compile your solution.
4. If compile error occured, find and resolve your error and goto (3).
5. Else, run your program.
6. c/p test case `a` in terminal and check solution.
7. c/p test case `b` in terminal and check solution.
8. c/p test case `c` in terminal and check solution.
9. c/p test case `d` in terminal and check solution.
10. If all test cases output expected results, you are probably done.
11. Else, goto (1).

The thing that I do not like about this workflow is the fact that you lose a lot of time doing c/p (or even typing) your test cases in your terminal. Sometimes you can type in incorrectly and sometimes you can even c/p incorrectly.

So, you are now probably thinking that you spend at least time in testing your solution. But lets make this a little bit harder.

Lets now say that you are solving some competition, like [Codechef](http://www.codechef.com/) or [Codeforces](http://codeforces.com/), and do not forget about [TopCoder](http://www.topcoder.com/). :)

Lets say that you are now solving 7 tasks and you have a little time for it. In this kind of environment you will probably stuck on some task and you will move over on some other task until you find solution for the old one. Of course, every task has some dummy test cases and of course that you found some bundary test cases for every task. Now, the problem from beginhing (solving `qwerty` task) gets 7 times bigger. And, again you lose a lot of time in doing c/p (or even typing) your test cases. So, let me present you a new workflow for you.

###Improved workflow:

1. Read and understand problem statement.
2. Code your solution in `qwerty.cpp`.
3. Run `ev`.
4. If all test cases output expected results, you are probably done.
5. Else, goto (1).

How does it work?
-----------------
To explain you how does `ev` works I need to which you are working.

You are solving four tasks `taskA`, `taskB`, `taskC` and `taskD`. Solution of your tasks are written in following source files: `taskA.c`, `taskB.c`, `taskC.cpp` and `taskD.cpp`. And your source files are in inside `my-solutions` folder.

Now you need some input data to check your solutions. As I said, you will have dummy data that problem creator provided for you and you will probably have some of your input data.

You need to make a new directory `test` inside `my-solutions` folder. In `test` directory you will have all of your input data (even the output data). So for example if you would like to make new input data for your `taskA` task you will need to:

1. Create `taskA.1.in` inside `test` directory.
2. c/p input data inside `taskA.1.in` and save it.

Now you have your first input data for your `taskA` task. Full path of that input data is `my-solutions/test/taskA.1.in`.

###Important thing!
If you have `<name>.c` or `<name>.cpp`, then your input data **MUST** be of a form `<name>.<identifier>.in` where `<identifier>` can be what ever identifier you want. For example: `1`, `2`, `3e`, `1a`, `abc`, etc.

###The secret
When you run `ev`:

	$ ev
	
in your `my-solutions` folder. It will try to find last modified *.c* or *.cpp* file. When it finds one, it will compile it with corresponding compiler and it will make output file `a.out`. After that it will try to find all input data of form `<name>.<identifier>.in` in `test` directory and it will present to you output of your program. As you can see, you do not have to worry about running test cases, `ev` will do it for you.

###Output data
If you have expected output data for some input data, you need to put them also in `test` directory. For example:

* If you have `taskA.1.in` as you input. Then `ev` will try to find `taskA.1.out`. If it finds `taskA.1.out` it will write output of your program in `taskA.1.user.out` and then it will compare those two files (`taskA.1.out` and `taskA.1.user.out`) and output *CORRECT* if they are the same, and *WRONG* otherwise. If it does not find `taskA.1.out` it will just output you what your program outputed.

How to install it?
------------------
####OS X and Linux only.

Follow this steps:

1. Get this project. You can do it in two ways:
	* Clone git repository
		
			$ git clone  https://github.com/hermanzdosilovic/scripts
	
	* Or download zip [file](https://github.com/hermanzdosilovic/scripts/archive/master.zip)
		* You now need to extract that .zip file
2. Open *java-course* folder in your terminal.
3. Position yourself into *fast-evaluator* folder:
 
		$ cd fast-evaluator
4. Make `ev` executable:

		$ chmod +x ev
		
5. Copy `ev` in some **/bin* directory that is included in your `$PATH`. For example:

		$ cp ev /usr/local/bin
	


	


 