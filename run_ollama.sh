#!/bin/sh
set -e

# Start server in background
ollama serve &
SERVER_PID=$!

# Wait until the Ollama REST API is ready
echo "Waiting for Ollama API..."
until curl -s http://127.0.0.1:11434/ >/dev/null; do
  sleep 1
done
echo "✅ Ollama is live!"

# Pull models
ollama pull all-minilm

# Bring server to foreground
kill $SERVER_PID
exec ollama serve