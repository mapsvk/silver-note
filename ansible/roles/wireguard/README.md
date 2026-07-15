# Ansible Role: Wireguard Server

Роль для автоматического развертывания и настройки VPN-сервера Wireguard на Ubuntu/Debian, включая скрипты управления пользователями.

## Требования

* Наличие `sudo` прав на целевом сервере.
* Открытый UDP порт для Wireguard (по умолчанию `51820`).

## Переменные роли (Role Variables)

Основные переменные, которые можно переопределить в `defaults/main.yml`:

```yaml
# Каталог для конфигурационных файлов Wireguard
wireguard_config_dir: "/etc/wireguard"

# Список необходимых системных пакетов
wireguard_required_packages:
  - iptables
  - qrencode
```

## Зависимости (Dependencies)

Нет.

## Пример Playbook (Example Playbook)

Пример использования роли в вашем файле `deploy.yml`:

```yaml
- hosts: servers
  become: true
  roles:
    - role: wireguard
```

## Использование скриптов управления

После применения роли на сервере станут доступны две утилиты в `/usr/local/bin/`:
* `wg-add-user <username>` — создать нового пользователя и сгенерировать ключи.
* `wg-del-user <username>` — удалить пользователя и отозвать доступ.

## Лицензия

MIT
