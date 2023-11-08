::Comment


PowerShell -Command "&{Set-SmbClientConfiguration -EnableBandwidthThrottling 0 -EnableLargeMtu 1 -Confirm:$false}"
PowerShell -Command "&{New-ItemProperty -Path HKLM:\\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters -Name AllowInsecureGuestAuth -Value 1 ` -PropertyType DWORD -Force | Out-Null}"
REG IMPORT %~dp0Registry\CopyAsPath.reg
REG IMPORT %~dp0Registry\OpenTerminalHere.reg
REG IMPORT %~dp0Registry\Hungarian_time.reg
%~dp0MicrosoftStore\Add-Store.cmd

timeout 3