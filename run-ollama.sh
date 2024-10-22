#!/usr/bin/env bash

ollama serve &
ollama pull mxbai-embed-large
ollama pull llama3.2