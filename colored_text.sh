#!/bin/bash

COLOR_BLACK='\033[0;30m'
COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_YELLOW='\033[0;33m'
COLOR_BLUE='\033[0;34m'
COLOR_MAGENTA='\033[0;35m'
COLOR_CYAN='\033[0;36m'
COLOR_WHITE='\033[0;37m'

COLOR_BLACK_BRIGHT='\033[1;30m'
COLOR_RED_BRIGHT='\033[1;31m'
COLOR_GREEN_BRIGHT='\033[1;32m'
COLOR_YELLOW_BRIGHT='\033[1;33m'
COLOR_BLUE_BRIGHT='\033[1;34m'
COLOR_MAGENTA_BRIGHT='\033[1;35m'
COLOR_CYAN_BRIGHT='\033[1;36m'
COLOR_WHITE_BRIGHT='\033[1;37m'

#echo with colored text
echo_ct() {
  local inputText=$1
  local inputColor=$2
  # Clear color
  custom_color_clear='\033[0m'
  echo "${inputColor}${inputText}${custom_color_clear}"
}

echo_ct_concat() {
  local inputText=$1
  local inputColor=$2
  # Clear color
  custom_color_clear='\033[0m'
  echo -n "${inputColor}${inputText}${custom_color_clear}"
}

echo_ct_test() {
  echo_ct "Black text color" $COLOR_BLACK
  echo_ct "Red text color" $COLOR_RED
  echo_ct "Green text color" $COLOR_GREEN
  echo_ct "Yellow text color" $COLOR_YELLOW
  echo_ct "Blue text color" $COLOR_BLUE
  echo_ct "Magenta text color" $COLOR_MAGENTA
  echo_ct "Cyan text color" $COLOR_CYAN
  echo_ct "White text color" $COLOR_WHITE

  echo_ct "Bright black text color" $COLOR_BLACK_BRIGHT
  echo_ct "Bright red text color" $COLOR_RED_BRIGHT
  echo_ct "Bright green text color" $COLOR_GREEN_BRIGHT
  echo_ct "Bright yellow text color" $COLOR_YELLOW_BRIGHT
  echo_ct "Bright blue text color" $COLOR_BLUE_BRIGHT
  echo_ct "Bright magenta text color" $COLOR_MAGENTA_BRIGHT
  echo_ct "Bright cyan text color" $COLOR_CYAN_BRIGHT
  echo_ct "Bright white text color" $COLOR_WHITE_BRIGHT
}
# echo_ct_test