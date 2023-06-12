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