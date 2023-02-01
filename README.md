# EEDK CMD Windows 
Send this package to a Windows machine to run a command(line) as local admin.
Command line: max characters 254 can be given in ePO.

## build.cmd 
Run this to build the package for ePO.

## EEDK_PowerShell_template
Based on the work from Steen Pedersen https://github.com/SteenPedersen/EEDK_PowerShell_template
<!-- blank line -->
----
<!-- blank line -->
Example of a PowerShell template script which can be deployed and provide feedback to ePO using Custom Props.

Make sure to place both the .CMD and .PS1 in an empty folder and use the EEDK to select that folder.
This will create an ePO package with both script files included.
