FROM python:3.4-alpine

#WORKDIR /usr/src/app
RUN apk update && apk add sqlite py-bcrypt libffi-dev build-base python-dev

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apk del libffi-dev build-base python-dev

COPY . .

ENV PORT 8080
EXPOSE  $PORT

CMD [ "python", "./app.py" ]
