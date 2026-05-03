#!/bin/sh
set -e

echo "[iris-core] running database migrations..."
migrate -path /migrations -database "$DATABASE_URL" up || true
echo "[iris-core] migrations complete"

echo "[iris-core] starting server..."
exec /bin/iris-core
