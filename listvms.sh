#!/bin/bash

# ANSI escape sequences for color formatting
RED='\033[0;31m'
NC='\033[0m' # No color

# Run the az vm list command and store the output in a variable
vms=$(az vm list --output table)

# Loop through each line of the output
while IFS= read -r line; do
  # Process each line as needed
  vm_name=$(echo "$line" | awk '{print $1}')
  formatted_line=$(echo "$line" | sed "s/$vm_name/${RED}$vm_name${NC}/")
  echo -e "Processing VM: $formatted_line"
  # Add your own logic here to handle each line of output

done <<< "$vms"
