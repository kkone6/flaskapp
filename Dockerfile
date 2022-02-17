# Use base image
FROM debian:stable-slim

# Install python and pip
RUN  apt-get update -y 
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-dev

# Install Flask needded by pathon app
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

# copy python file
COPY ./app.py /app/app.py
# copy html file
COPY ./templates /app/templates
# the container should expose port
EXPOSE 5000
# run the application
ENTRYPOINT [ "python3", "app.py" ]
