# Monitoring and Alerting

## Метрики стабильности сервиса

- availability;
- HTTP error rate;
- response latency;
- request rate;
- CPU;
- memory;
- disk usage;
- database connection errors;
- queue/backlog size.

## Warning

Warning означает деградацию или приближение к опасному порогу.

Примеры:
- CPU > 75% в течение 10 минут;
- disk > 80%;
- p95 latency заметно выросла;
- error rate выше обычного, но сервис доступен.

## Critical

Critical означает серьёзное влияние на сервис или пользователей.

Примеры:
- сервис недоступен;
- error rate > 20%;
- disk почти заполнен;
- healthcheck падает несколько минут;
- критическая зависимость недоступна.

Главная разница: `Warning` требует внимания и наблюдения, `Critical` обычно требует оперативной реакции.
