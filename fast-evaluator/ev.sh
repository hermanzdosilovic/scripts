#!/bin/bash
# find last modified .c or .cpp file
source=$(ls -tr *.{c,cpp} 2>/dev/null | tail -1)
# get file extension
extension=${source##*.}
# get file name
name=${source%.*}

# if no file found then cannot continue
if [ "$source" == "" ]; then
    echo "ev: no file for execution"
    exit
fi

# if there is no 'test' directory
if [ ! -d test ]; then
    echo "ev: there is no directory 'test'"
    exit
fi

printf " - ${source} -\n"

# compile source
if [ "$extension" == "c" ]; then
    errors=$(gcc ${source} 2>&1 > /dev/null)
else
    errors=$(g++ ${source} 2>&1 > /dev/null)
fi

# if compile errors occured then cannot continue
if [ "$errors" != "" ]; then
    echo "$errors"
    echo "ev: check compile errors"
    exit
fi

# if check if tests exists
tests=$(ls test/${name}.*.in 2>/dev/null)
if [ "$tests" == "" ]; then
    echo "ev: expected test/${name}.*.in"
    exit
fi

for fin in test/${name}.*.in; do
    # from input file make output file with same format
    fout=${fin%.*}.out
    echo "* $fin:"

    # if outout file exists compare output
    if [ -a $fout ]; then
        foutuser=${fin%.*}.user.out
        ./a.out < $fin > $foutuser
        cmp -s $fout $foutuser
        if [ $? -eq 1 ]; then
            echo "WRONG"
            echo "check $foutuser for help"
        else
            echo "CORRECT"
        fi
    else
        ./a.out < $fin
    fi
    echo
done

rm a.out
