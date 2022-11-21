FROM --platform=linux/amd64 python:3.10.5-slim-buster

RUN apt-get update
RUN apt-get install -y make g++ python3-dev

WORKDIR /src
COPY . .

RUN cd SuffixTreePy && python setup.py bdist_wheel
