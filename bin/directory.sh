#!/bin/sh

set -e

if [ "foo" == "`basename \`pwd\``" ]
then
    echo "Found Foo"
    if cat notes.txt >/dev/null 2>&1 
    then
        echo "Found notes.txt\nGreat job"
        exit 0
    fi
fi
echo "Faild the test try again"
exit 1
