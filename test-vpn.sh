source commands-environment-variables
source commands-file-system
source commands-print
source commands-system
source commands-vpn

function test_connect() {
  print_double_line
  echo "${INFO} Connecting to VPN"
  vpn_connect
  RC=$?
  check_return_code $RC
}

function test_disconnect() {
  print_line
  echo "${INFO} Disconnecting from VPN"
  vpn_disconnect
  RC=$?
  check_return_code $RC
}

test_connect
#echo "${INFO} Waiting for VPN to get settled in"
#sleep 30
#test_disconnect
