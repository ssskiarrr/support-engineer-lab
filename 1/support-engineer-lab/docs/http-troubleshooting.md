# HTTP / REST API Troubleshooting

## Частые коды

- `200 OK` — запрос успешно обработан.
- `400 Bad Request` — некорректный запрос клиента.
- `401 Unauthorized` — отсутствует/невалидна аутентификация.
- `403 Forbidden` — пользователь распознан, но нет прав.
- `404 Not Found` — ресурс не найден.
- `429 Too Many Requests` — превышен rate limit.
- `500 Internal Server Error` — ошибка на стороне сервера.
- `502 Bad Gateway` — gateway/proxy получил некорректный ответ upstream.
- `503 Service Unavailable` — сервис временно недоступен.
- `504 Gateway Timeout` — upstream не ответил вовремя.

## Алгоритм

```bash
curl -v https://example.com/api/health
curl -I https://example.com
```

Проверить:
1. URL и HTTP method.
2. Status code.
3. Headers.
4. Authentication token.
5. Response body.
6. Latency.
7. Логи по времени запроса.
8. Состояние зависимостей.
