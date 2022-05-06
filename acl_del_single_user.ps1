$acl_path = "文件路径"
$new_acl = Get-Acl -Path $acl_path
$user = "用户（domain\user 或 user）"
$qx = "Read"
$qx_type = "Allow"
$ar = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule($user, $qx,,,$qx_type)
$new_acl.RemoveAccessRuleAll($ar)
Set-Acl -Path $acl_path -AclObject $new_acl
(Get-Acl -Path $acl_path).AccessToString
