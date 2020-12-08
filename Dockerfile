FROM python:3.7-slim

WORKDIR /app
ADD . /app

RUN apt-get update && apt-get install -y libgomp1
RUN pip install --trusted-host pypi.python.org -r req.txt

RUN pip install pycaret[2.2.0]


