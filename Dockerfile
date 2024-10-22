FROM python:3.12

WORKDIR /code

RUN pip install pdm

COPY ./pdm.lock /code/pdm.lock

RUN pdm sync

COPY ./*.yaml /code/
COPY ./pyproject.toml /code/pyproject.toml
COPY ./src /code/src

# Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN ollama serve
RUN ollama -v
RUN ollama run llama3.2

CMD ["pdm", "run", "start", "--port", "80"]