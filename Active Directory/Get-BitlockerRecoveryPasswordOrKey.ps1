$a = Get-ADComputer 计算机名
$b = Get-ADObject -Filter {objectclass -eq 'msFVE-RecoveryInformation'} -SearchBase $a.DistinguishedName -Properties 'msFVE-RecoveryPassword'
foreach($c in $b) {
    Write-Host $c
    Write-Host $c."msFVE-RecoveryPassword"
}
