#!/bin/bash

INDEX_SCRIPT_PATH=$(readlink -f "$0")
INDEX_DIRECTORY=$(dirname "$INDEX_SCRIPT_PATH")

echo "Executing shell scripts from: ${INDEX_DIRECTORY}/"

# another way to detect the shell but this isn't quite right and is a suggestion from gpt3.5
# if [ "$SHELL" = "/bin/bash" ]; then
#   source colors.sh
# elif [ "$SHELL" = "/usr/bin/fish" ]; then
#   . colors.sh
# else
#   . /path/to/colors.sh
# fi

__includeBashShellScripts() {
  source ${INDEX_DIRECTORY}/colored_text.sh  
}

__includeFishOrPosixShellScripts() {
  . ${INDEX_DIRECTORY}/colored_text.sh
}

if [ -n "$BASH" ]; then
  __includeBashShellScripts
elif [ -n "$FISH_VERSION" ]; then
  __includeFishOrPosixShellScripts
else
  __includeFishOrPosixShellScripts
fi

echo_ct_concat "Included" $COLOR_MAGENTA
echo_ct_concat " colored_text.sh" $COLOR_GREEN
echo_ct " script" $COLOR_MAGENTA