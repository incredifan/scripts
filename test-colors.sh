# If this is run as a bash file, the coloring doesn't work.
# However, if it's just executable (no #!), coloring works 
# just fine.

source commands-colors
source commands-environment-variables
source commands-print

function test_colors() {
  echo "${LINE_BLUE_LONG}"
  echo "${INFO} Entering test-colors.sh"
  echo "${LINE_BLUE_LONG}"
  echo "${INFO}"
  echo "${INFO} Printing Keywords"
  echo "${INFO}"
  print_variable INFO
  print_variable SUCCESS
  print_variable ERROR
  # print_variable NC
  echo "${INFO} NC"
  echo "${INFO}   ${NC}[No Color]${NC}"
  echo "${INFO}"
  echo "${LINE_BLUE_LONG}"
  # echo "${INFO}"
  echo "${INFO} Printing Lines"
  echo "${INFO}"
  print_variable LINE_BLUE
  print_variable LINE_GREEN
  print_variable LINE_RED
  print_variable LINE_NC
  echo "${INFO}"
  echo "${LINE_BLUE_LONG}"
  echo "${INFO} Printing Long Lines"
  echo "${INFO}"
  print_variable LINE_BLUE_LONG
  print_variable LINE_GREEN_LONG
  print_variable LINE_RED_LONG
  print_variable LINE_NC_LONG
  echo "${INFO}"
  echo "${LINE_BLUE_LONG}"
  echo "${INFO} Exiting test-colors.sh"
  echo "${LINE_BLUE_LONG}"
}

function test_new_colors() {
  echo "Attempting to test new colors:"
  echo "  Black Text:        [${BLACK_TEXT}Black Text${NC}]"
  echo "  Red Text:          [${RED_TEXT}Red Text${NC}]"
  echo "  Brown/Orange Text: [${BROWN_ORANGE_TEXT}Brown/Orange Text${NC}]"
  echo "  Purple Text:       [${PURPLE_TEXT}Purple Text${NC}]"
  echo "  Cyan Text:         [${CYAN_TEXT}Cyan Text${NC}]"
  echo "  Light Gray Text:   [${LIGHT_GRAY_TEXT}Light Gray Text${NC}]"
  echo "  Dark Gray Text:    [${DARK_GRAY_TEXT}Dark Gray Text${NC}]"
  echo "  Light Red Text:    [${LIGHT_RED_TEXT}Light Red Text${NC}]"
  echo "  Light Green Text:  [${LIGHT_GREEN_TEXT}Light Green Text${NC}]"
  echo "  Yellow Text:       [${YELLOW_TEXT}Yellow Text${NC}]"
  echo "  Light Blue Text:   [${LIGHT_BLUE_TEXT}Light Blue Text${NC}]"
  echo "  Light Purple Text: [${LIGHT_PURPLE_TEXT}Light Purple Text${NC}]"
  echo "  Light Cyan Text:   [${LIGHT_CYAN_TEXT}Light Cyan Text${NC}]"
  echo "  White Text:        [${WHITE_TEXT}White Text${NC}]"
}

# clear
# test_colors
test_new_colors


