# tcfit

## About
Test case fit (`tcfit`) is an bash script for converting custom test case folder structure into structure that [`ev`](https://github.com/hermanzdosilovic/ev) recognizes.

## Basic Example

Lets say you have this kind of test case folder structure:

	+ my-tests
		+ test01
	  		test.a
			test.b
		+ test02
			test.a
			test.b
		+ test03
			test.a
			test.b

Here, the input file for first test case (**test01**) is **test.a** and output file **test.b**. The same goes for second and third test case.

If you want to test your `hello.c` program with these test cases using _ev_ you need to convert them to appropriate format, which is:

	+ test
		+ hello
			hello.1.in
			hello.2.in
			hello.3.in
			hello.1.out
			hello.2.out
			hello.2.out

As you can see, file `my-tests/test01/test.a` now became `test/hello/hello.1.in`.

To do just that you need to run:

	</path/to/your/my-tests/folder>$ tcfit a b hello </path/to/root/of/test/folder>

### Explained:

`</path/to/your/my-tests/folder>` - you need to be located in folder where your custom-formated-test-cases are, in this case this is the `my-tests/` folder

`a` - this is an string which identifies your input test case file

`b` - this is an string which identifies your outout test case file

`hello` - this is the name of the program you will test

`</path/to/root/of/test/folder>` - this is the path where you will save your newly-formated-test-cases