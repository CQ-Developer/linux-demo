#!/bin/bash

# 使用 case..in...esac 改造 hello_2.sh
case $1 in
	"hello")
		echo "Hello, how are you?"
		;;
	"")
		echo "You must input param, $0 something"
		;;
	*)
		echo "The only param is hello, $0 hello"
		exit 1
		;;
esac

exit 0
