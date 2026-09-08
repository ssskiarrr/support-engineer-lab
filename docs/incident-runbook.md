# Incident Runbook

## 1. Получение алерта

Зафиксировать:
- время;
- сервис;
- название алерта;
- severity;
- текущее значение метрики;
- возможные связанные изменения/deploy.

## 2. Проверка влияния

Определить:
- затронут один пользователь или сервис целиком;
- растёт ли число ошибок;
- есть ли деградация latency;
- воспроизводится ли проблема.

## 3. Диагностика

### Linux
```bash
ps aux
top
df -h
free -m
ss -tulpn
journalctl -u service-name
```

### Network
```bash
ping example.com
nslookup example.com
curl -I https://example.com
traceroute example.com
```

### Logs
Искать:
- ERROR / WARN;
- request_id;
- user_id;
- timestamp;
- stack trace;
- timeout;
- connection refused.

## 4. Эскалация

Передать смежной команде:
- что произошло;
- когда началось;
- какой сервис затронут;
- влияние на пользователей;
- как воспроизвести;
- фрагменты логов;
- request_id;
- HTTP status code;
- уже выполненные проверки.

## 5. Закрытие

После восстановления:
- проверить метрики;
- убедиться, что ошибки прекратились;
- обновить incident ticket;
- описать root cause;
- при необходимости предложить preventive action.
