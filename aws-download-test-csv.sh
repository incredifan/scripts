#!/bin/zsh

source commands-colors
source commands-aws
source commands-environment-variables
source commands-print

print_double_line
set_variable WORKSPACES ~/workspaces
print_variable WORKSPACES

print_line
set_variable WORKSPACE $WORKSPACES/<project_workspace>
print_variable WORKSPACE

print_line
set_variable SOURCE_FILENAME "<some_filename>.csv"
print_variable SOURCE_FILENAME

print_line
set_variable S3_HOME "s3://<s3_directory>"
print_variable S3_HOME

print_line
COMMAND="aws_download_test_csv $S3_HOME $WORKSPACE $SOURCE_FILENAME"
print_variable COMMAND
eval $COMMAND
