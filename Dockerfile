FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    python3-pip


COPY ./HelloWorld /HelloWorld
WORKDIR /HelloWorld
ENV MY_ENV_VAR=value
EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["app.py"]
