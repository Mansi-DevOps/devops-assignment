FROM python:3.13
WORKDIR /home/project
RUN apt-get update && apt-get install -y
    
COPY . /home/project
RUN pip install -r requirements.txt
EXPOSE 8000
CMD [ "make", "run-server" ]
