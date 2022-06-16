FROM python:3.10-alpine

WORKDIR /code

COPY /src/requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY /src/. /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0"]
