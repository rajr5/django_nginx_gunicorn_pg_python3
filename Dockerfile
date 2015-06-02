FROM python:3.4
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /project_code
WORKDIR /project_code
ADD requirements.txt /project_code/
RUN pip3 install -r requirements.txt
WORKDIR /project_code/app
