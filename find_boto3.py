#!/usr/bin/env python3

from importlib import util

if util.find_spec("boto3") is None:
    print("installing boto3")
    out, err = execute(['pip3', 'install', 'boto3'])
    print(out)
    if err:
        stderr.write(err)
        exit(1)
else:
	print("boto3 found")

