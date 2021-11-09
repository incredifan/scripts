#!/bin/sh

aws --endpoint-url=http://localhost:4566 sqs purge-queue --queue-url https://localhost:4566/000000000000/some-queue.fifo
