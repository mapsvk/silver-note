# Проект: Автоматизированная VPN-инфрафструктура в TimeWeb

Репозиторий содержит конфигурационные файлы, схемы архитектуры и скрипты автоматизации для развертывания.

---

## Архитектура проекта

Ниже будет представлена схема сетевых контуров и Docker-окружения.

![Архитектура проекта](scheme-01.svg)

---

## Как запустить проект (быстрый старт)

Скопировать содержимое cluod-init.yml и вставить в настройки cluod-init скрипт в вашей ВМ.

---

## WireGuard: Как пользоваться

Добавить пользователя
```bash
add-wg-user USER_NAME
```

Удалить пользователя
```bash
del-wg-user USER_NAME
```

## SOCKS5 (3proxy): Как пользоваться

#### Добавить пользователя

Откройте файл конфигурации

```bash
nano /opt/project-timeweb/3proxy/3proxy.cfg
```

Добавить строку с именем пользователя и паролем по шаблону ниже

```bash
users user_new:CL:Password111
```

Добавить имя пользователя в строку ```allow```

```bash
allow user_ivan,user_alex,user_new
```

Сохранить и выйти.

Перезапустить контейнер.

#### Удалить пользователя

Откройте файл конфигурации

```bash
nano /opt/project-timeweb/3proxy/3proxy.cfg
```

Удалить строку с именем пользователя и паролем

```bash
users user_new:CL:Password111
```

Удалить имя пользователя из строки ```allow```

```bash
allow user_ivan,user_alex,user_new
```

Сохранить и выйти.

Перезапустить контейнер.


#### Проверить подключение

```bash
curl -v --socks5-hostname 'USER_NAME:PASWORD@IP_ADDRESS:PORT' https://ifconfig.me
```

>Пример
```bash
curl -v --socks5-hostname 'user_ivan:SUPER_PASSSWORD123@1.1.1.1:1080' https://ifconfig.me
```

---
