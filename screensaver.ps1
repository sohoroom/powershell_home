#set-executionpolicy remotesigned

param (
$minutes = 3600
)

#param(
#[string]$Name=$(throw "Parameter missing: -name Name") ,
#[int]$Age=$(throw "Parameter missing: -age x as number")
#)
#"Name= $Name"
#"Age=$Age"

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 20
  $myshell.sendkeys("+")
  $myshell.sendkeys("+")
}