# notes

## Configure network settings

```
New-NetIPAddress -InterfaceAlias Ethernet0 –IPAddress 192.168.0.100 -DefaultGateway 192.168.0.1 -PrefixLength 24
```

```
Get-NetIPConfiguration
```

```
 Set-DnsClientServerAddress -InterfaceAlias Ethernet0 -ServerAddresses 127.0.0.1
```
