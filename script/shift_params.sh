#!/bin/bash

# 使用shift让参数偏移

echo "total params  =>   $#"
echo "params are    =>   $@"

echo "# shift"
shift
echo "total params  =>   $#"
echo "params are    =>   $@"

echo "# shift 2"
shift 2
echo "total params  =>   $#"
echo "params are    =>   $@"

exit 0
