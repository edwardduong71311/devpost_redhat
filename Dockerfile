FROM python:3.12

WORKDIR /code

RUN pip install pdm

COPY ./pdm.lock /code/pdm.lock

RUN pdm sync

COPY ./*.yaml /code/
COPY ./pyproject.toml /code/pyproject.toml
COPY ./src /code/src

CMD ["pdm", "run", "start", "--port", "8080"]