aws --endpoint-url=http://localhost:4566 s3 cp s3://<source>/$1 ~/pg_backups/$1.csv
echo "Download:"
echo "  $download"
