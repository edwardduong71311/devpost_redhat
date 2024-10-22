#!/bin/bash

# Start Ollama in the background.
ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "Pulling embedding model..."
ollama pull mxbai-embed-large

echo "Pulling llama 3.2 model..."
ollama pull llama3.2

# Wait for Ollama process to finish.
wait $pid