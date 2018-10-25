FROM python:3.4-alpine

#WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT 8080
EXPOSE  $PORT

CMD [ "python", "./app.py" ]
