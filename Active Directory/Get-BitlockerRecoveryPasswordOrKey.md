## 方式一
管理员身份运行 Powershell，依次输入如下命令。
~~~
$a = Get-ADComputer 计算机名
$b = Get-ADObject -Filter {objectclass -eq 'msFVE-RecoveryInformation'} -SearchBase $a.DistinguishedName -Properties 'msFVE-RecoveryPassword'
$b
~~~
## 方式二
下载 Get-BitlockerRecoveryPasswordOrKey.ps1 到 DC 中。
管理员身份运行 PowerShell ISE，打开 Get-BitlockerRecoveryPasswordOrKey.ps1，更改计算机名，执行。
