# syntax=docker/dockerfile:1
FROM python:3.10-slim-bullseye

# install app dependencies
RUN apt-get update

# install app
COPY handler.py /
COPY requirements.txt /
RUN pip install -r requirements.txt
RUN apt install cpufrequtils -y
# final configuration
CMD ["python3", "handler.py"]