#!/bin/sh

aws --endpoint-url=http://localhost:4566 s3 ls s3://<s3_path>
