source commands-elasticmq
source commands-colors
source commands-print

print_line

printf "Starting ElasticMQ..."
# elasticmq_run
# elasticmq_start
elasticmq_add_reconciliation_queue
elasticmq_add_invoice_queue
printf " Done"
