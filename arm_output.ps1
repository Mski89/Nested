param (
    [Parameter(Mandatory=$true)][string]$ARMOutput
    )

#region Convert from json
$json = $ARMOutput | convertfrom-json
#endregion

#region Parse ARM Template Output
Write-Output -InputObject ('Hello {0} {1}' -f $json.firstNameOutput.value, $json.lastNameOutput.value)
#endregion