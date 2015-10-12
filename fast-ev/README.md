# fast-ev

Simple script for fast task evaluation on programming contests.

## Example Structure

``` bash
competition_folder/
|-- task_1/
|	|-- 1.in
|   |-- 1.out
|   |-- 2.in
|   |-- 2.out
|   |-- solution.c
|   |-- solution_brute.c
|   |-- task_1.c
|
|-- task_2/
|	|-- 1.in
|   |-- 1.out
|   |-- 2.in
|   |-- 2.out
|	|-- 3.in
|   |-- 3.out
|   |-- 4.in
|   |-- 4.out
|   |-- first_try.c
|   |-- second_try.c
|
|-- fast-ev.sh
```

In `task_1` folder run following command for testing `solution_brute.c`:

``` 
fast-ev solution_brute.c
```

## Example Output

``` 
- Test #1 -
ACCEPTED

- Test #2 -
ACCEPTED

- Test #3 -
ACCEPTED

- Test #4 -
WRONG
```