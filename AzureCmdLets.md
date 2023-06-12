# How to install Azure CmdLets

You will need to begin with a PowerShell administrator prompt:

```
# Install the latest version of the Azure PowerShell module
Install-Module -Name Az -AllowClobber -Force

# Import Azure PowerShell Module
Import-Module -Name Az

# Set the execution policy to "RemoteSigned"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```


# Source Code

```
#!/bin/bash

# Run the az vm list command and store the output in a variable
vms=$(az vm list --output table)

# Loop through each line of the output
while IFS= read -r line; do
  # Process each line as needed
  echo "Processing VM: $line"
  # Add your own logic here to handle each line of output

done <<< "$vms"
```