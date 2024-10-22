#!/usr/bin/env bash

echo "Starting Ollama server..."
ollama serve &

echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done


echo "Pulling embedding model..."
ollama pull mxbai-embed-large

echo "Pulling llama 3.2 model..."
ollama pull llama3.2