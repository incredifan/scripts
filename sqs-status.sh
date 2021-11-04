#!/bin/sh

aws --endpoint-url=http://<url>:<port> sqs get-queue-attributes --queue-url https://localhost:4566/000000000000/some-queue.fifo --attribute-names "ApproximateNumberOfMessages" "ApproximateNumberOfMessagesDelayed" "ApproximateNumberOfMessagesNotVisible"
