#use an offical python
FROM python:3.9-slim

#set the working folder in the continer
WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

#copy the app file to the contienr
COPY hello.py .

#run command
CMD ["python", "./hello.py"]