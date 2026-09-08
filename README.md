# Support Engineer Lab

Учебный проект для практики базовых задач Trainee / Junior Support Engineer.

## Что демонстрирует проект

- Linux CLI и базовая диагностика системы и сети
- анализ логов и поиск ошибок
- troubleshooting веб-сервисов и HTTP
- понимание REST API и клиент-серверной архитектуры
- SQL для проверки и диагностики данных
- базовая работа с мониторингом, метриками и алертами
- документирование инцидентов и root cause analysis

## Структура

- `docs/incident-runbook.md` — алгоритм обработки инцидента
- `docs/http-troubleshooting.md` — диагностика HTTP/API ошибок
- `docs/network-troubleshooting.md` — DNS, ping, ports, routes
- `docs/alerting.md` — Critical и Warning алерты
- `sql/support_queries.sql` — SQL-примеры для диагностики данных
- `sample_logs/app.log` — тестовые логи
- `monitoring/prometheus-alerts.yml` — учебные примеры алертов Prometheus

## Пример troubleshooting

Сценарий: пользователь сообщает, что операция в сервисе не выполняется.

1. Проверить масштаб проблемы: один пользователь или массовая ошибка.
2. Проверить HTTP status code и время запроса.
3. Проверить логи приложения по timestamp / request_id.
4. Проверить доступность зависимостей: API, DNS, database, network.
5. Проверить метрики latency / error rate.
6. Локализовать компонент.
7. При необходимости эскалировать проблему в разработку или инфраструктуру с собранными данными.
8. Зафиксировать результат и root cause.

## Навыки

`Linux` `SQL` `HTTP` `REST API` `Logs` `Troubleshooting`
`Monitoring` `Prometheus` `Networking` `Incident Management`

> Проект учебный. Все данные, логи и инциденты синтетические.
