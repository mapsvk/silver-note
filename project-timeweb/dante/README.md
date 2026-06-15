# SOCKS5 Dante

Проверена на ubuntu

## Добавить пользователя

docker exec -it dante-socks5 sh -c "useradd -r -s /bin/false proxyuser && echo 'proxyuser:my_secret_password' | chpasswd"


## Добавить правило в фаерволе

sudo ufw allow 1080/tcp


## Проверка

curl --socks5-hostname proxyuser:my_secret_password@195.133.66.236:1080 https://ifconfig.me


#### 
https://gist.github.com/mezhevikin/2183b06d29d895715249301b17847c52

