aws --endpoint-url http://localhost:9324 sqs create-queue --queue-name local-reconciliation-queue.fifo --attributes FifoQueue=true
