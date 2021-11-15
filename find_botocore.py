#!/usr/bin/env python3

from importlib import util

if util.find_spec("botocore") is None:
	print("installing botocore")
	out, err = execute(['pip3', 'install', 'botocore'])
	print(out)
	if err:
		stderr.write(err)
		exit(1)
else:
	print("Found botocore ... Proceeding")
