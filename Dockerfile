FROM ubuntu

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y pip

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=opt/source-code/app.py flask run
