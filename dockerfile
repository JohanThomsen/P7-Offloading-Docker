# syntax=docker/dockerfile:1
FROM python:3.10-slim-bullseye

# install app dependencies
RUN apt-get update

# install app
COPY handler.py /
COPY cpuFreq.py /
COPY requirements.txt /
COPY pythonRunner.sh /
COPY logger.py /
RUN chmod a+x pythonRunner.sh
RUN pip install -r requirements.txt
RUN apt install cpufrequtils -y

# final configuration
CMD ["./pythonRunner.sh"]