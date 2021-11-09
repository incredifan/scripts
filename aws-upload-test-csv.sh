source commands-colors
source commands-aws
source commands-environment-variables
source commands-print

print_double_line
if [ "$#" -lt 3 ]; then
  echo "Parameters Are:"
  echo "  <source_directory>"
  echo "  <s3_directory>"
  echo "  <source_filename>"
  print_double_line
  exit
fi

set_variable WORKSPACES /Users/dennisherbert/bigbrain/workspaces
print_variable WORKSPACES

print_line
set_variable WORKSPACE $1
print_variable WORKSPACE

print_line
set_variable SOURCE_FILENAME $3
print_variable SOURCE_FILENAME

print_line
set_variable S3_HOME $2

print_variable S3_HOME
COMMAND="aws_upload_test_csv $WORKSPACE $S3_HOME $SOURCE_FILENAME"
print_variable COMMAND
eval $COMMAND
