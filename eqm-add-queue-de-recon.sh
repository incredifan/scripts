source commands-eqm
source commands-colors
source commands-print

print_line
printf "${INFO} Adding Data Extraction for Reconciliation Queue ..."
elasticqm_add_reconciliation_queue
printf "... Done"
