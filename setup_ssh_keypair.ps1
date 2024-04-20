<#  

This script will generate ssh key pair and copy public key to clipboard
(Just run the execution steps in your powershell by changing -mail value)
Execution Steps:
----------------
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\setup_ssh_keypair.ps1 -mail reverentdude@gmail.com

#>

param (
    [string]$mail = ""
)

# generate key pair
ssh-keygen -t rsa -b 4096 -C $mail

# copy public key to clipboard
cat ~/.ssh/id_rsa.pub | clip