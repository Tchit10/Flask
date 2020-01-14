FROM python:3.7.6-alpine3.10

RUN apk add --update && apk add ca-certificates

COPY ./nerootca2042.crt /usr/local/share/ca-certificates/nerootca2042.crt
COPY ./requirements.txt / && COPY ./flask/ /

RUN pip config set global.cert /usr/local/share/ca-certificates/nerootca2042.crt && update-ca-certificates

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "/flask/flaskhello.py"]
