# Ollama with Docker

This project provides a containerized setup for running [Ollama](https://ollama.com/) (a framework for running large language models locally) within Docker. It automatically sets up the Ollama server and pulls the all-minilm model for immediate use.

## Features

- 🐳 Containerized Ollama server using Docker
- 🚀 Automatic model pulling (all-minilm)
- 🔄 Persistent volume for storing models
- ⚙️ Simple configuration via environment variables
- 🐍 Python interface for interacting with Ollama

## Prerequisites

- Docker and Docker Compose
- Python 3.11 or higher (for using the Python client)

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/barvhaim/ollama-with-docker.git
   cd ollama-with-docker
   ```

2. Start the Ollama server using Docker Compose:
   ```bash
   docker-compose up -d
   ```

3. Verify the server is running:
   ```bash
   curl http://localhost:11434/api/version
   ```

## Configuration

The Ollama server is configured via the `docker-compose.yaml` file. Key configurations include:

- **Port**: By default, Ollama runs on port 11434
- **Data storage**: Models are stored in a Docker volume (`ollama_data`)
- **Environment variables**: Configure Ollama by setting environment variables in the docker-compose file

## Using with Python

This project includes a simple Python interface. To use it:

```python
# Example will be added in future versions
from ollama_client import OllamaClient

client = OllamaClient("http://localhost:11434")
response = client.generate("What is the capital of France?")
print(response)
```

## Project Structure

- `docker-compose.yaml` - Docker Compose configuration for Ollama
- `Dockerfile.ollama` - Docker container definition for Ollama
- `run_ollama.sh` - Script to initialize Ollama server and pull models
- `main.py` - Python entry point
- `pyproject.toml` - Python project configuration

## Available Models

By default, this setup pulls the following model:
- `all-minilm` - A lightweight embedding model

To add more models, modify the `run_ollama.sh` script.

## License

[Insert your license information here]

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Acknowledgements

- [Ollama](https://ollama.com/) - For their amazing work on local LLM hosting
