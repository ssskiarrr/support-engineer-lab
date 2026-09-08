# Support Engineer Lab

Учебный проект для практики задач стажёра Support Engineer / Junior Support Engineer.

## Что демонстрирует проект

- Linux CLI и базовая диагностика процессов/сети
- анализ логов и поиск ошибок
- troubleshooting веб-сервисов и HTTP
- базовое понимание REST API и клиент-серверной архитектуры
- SQL для диагностики данных
- базовая работа с алертами и метриками
- документирование инцидентов и root cause analysis

## Структура

- `docs/incident-runbook.md` — алгоритм обработки инцидента
- `docs/http-troubleshooting.md` — диагностика HTTP/API ошибок
- `docs/network-troubleshooting.md` — DNS, ping, ports, routes
- `docs/alerting.md` — Critical и Warning алерты
- `scripts/analyze_logs.sh` — простой Bash-анализатор логов
- `scripts/service_check.sh` — базовая проверка доступности сервиса
- `sql/support_queries.sql` — SQL-примеры для диагностики данных
- `sample_logs/app.log` — тестовые логи
- `monitoring/prometheus-alerts.yml` — учебные примеры алертов Prometheus

## Пример troubleshooting

Сценарий: пользователь сообщает, что операция в сервисе не выполняется.

1. Проверить масштаб проблемы: один пользователь или массовая ошибка.
2. Проверить HTTP status code и время запроса.
3. Проверить логи приложения по timestamp / request_id.
4. Проверить доступность зависимостей: API, DNS, database, network.
5. Проверить метрики latency/error rate.
6. Локализовать компонент.
7. При необходимости эскалировать в разработку/инфраструктуру с собранными данными.
8. Зафиксировать итог и root cause.

## Навыки

`Linux` `Bash` `SQL` `HTTP` `REST API` `Logs` `Troubleshooting`
`Monitoring` `Prometheus` `Networking` `Incident Management`

> Проект учебный. Все данные, логи и инциденты синтетические.
