# notes

## Configure network settings

```
New-NetIPAddress -InterfaceAlias Ethernet0 –IPAddress 192.168.0.100 -DefaultGateway 192.168.0.1 -PrefixLength 24
```

```
Get-NetIPConfiguration
```


reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 255 /f


Set-NetConnectionProfile

Set-NetConnectionProfile -Name Network -NetworkCategory Private
