MY_COMMAND="\l"
psql postgresql://$PG_USER:$PG_PASS@$PG_HOST --command="$MY_COMMAND" > database_list.txt

input="database_list.txt"
# awk '{print $1 > "dblist2.txt"}' $input
# awk '{print $1}' $input | awk '(NR >=4)'
awk '(NR >=4)' $input | awk '{print $1 > "dblist2.txt"}'

input="dblist2.txt"
cat dblist2.txt | sed -e 's/|/BAD_WORD/' > dblist3.txt
input="dblist3.txt"
# cat $input
while read -r line; do
  if [[ "$line" != template* ]] && \
     [[ "$line" != "BAD_WORD" ]] && \
     [[ "$line" != \(* ]] 
  then
    echo "$line"
  fi
done < $input
# awk '{print $1}' "$input"

#  if [[ "$line" != template* ]] && [[ "$line" != "BAD_WORD" ]];then
# awk 'NR<4 || /template0/ || /template1/ || !/^[^(]/ {next} {print $1}' database_list.txt 
# cat dblist2.txt
# awk 'NR<4 || /template0/ || /template1/ {next} {print $1}' database_list.txt
# awk 'NR<4 || /template0/ || /template1/ {next} {print}' database_list.txt
# awk 'NR<4 || /template0/ {next} {print}' database_list.txt
# awk 'NR<3 || /template0/ {next} {print}' database_list.txt
# awk '(NR>3)' database_list.txt
# awk '{print $1}' database_list.txt | awk '(NR>=4)' 
# awk '{print $1}' database_list.txt | awk '(NR>=3)' || /template0/ {next} {print}
# awk '{print $1}' database_list.txt | awk '(NR>3)' || /template0/ {next} {print}' 
# Hangs the script
# awk 'NR>2 {print last} {last=$0}'
# awk '{print $1}' database_list.txt | awk '(NR>3)' | head -n -1 | tail -n+2
# source commands-environment-variables
# wc -l database_list.txt > db_line_count.txt
# cat db_line_count.txt
# awk '{print $1}' database_list.txt | awk '(NR>3)' | awk '(NR<17)'
# awk '(NR>3)' database_list.txt
# echo "  "
# while read line
# do 
#   echo "$line"
# done < "database_list.txt"
# psql \
#   --username=$PG_USER \
#   --password=$PG_PASS \
#   -W \ 
#   --host=$PG_HOST \
#   -Atc 'SELECT table_name \
#     FROM information_schema.tables \
#     WHERE table_schema = \'public\' \
#     ORDER BY 1'
# source commands-postgres
# source commands-print
# COMMAND="SELECT schema_name FROM information_schema.schemata;"
# COMMAND="select nspname from pg_catalog.pg_namespace"
# print_variable COMMAND
# pg_run_command $COMMAND
