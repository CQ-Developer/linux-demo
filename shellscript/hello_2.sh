#!/bin/bash

# must input hello.
if [ "$1" == "hello" ]; then
	echo "Hello, how are you?"
elif [ "$1" == "" ]; then
	echo "You must input param, $0 something"
else
	echo "The only param is hello, $0 hello"
fi

exit 0
