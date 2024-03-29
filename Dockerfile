FROM mcr.microsoft.com/devcontainers/python:0-3.11

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt 

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

# CMD ["uvicorn", "app.main:app", "--reload"]