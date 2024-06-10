FROM python:3.11

ENV TOKEN_CODE=116461502633963062237

ENV PYTHONUNBUFFERED True
ENV APP_HOME /app

WORKDIR $APP_HOME
COPY . ./
COPY .env .env

RUN pip install -r requirements.txt

EXPOSE 8080

# CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app
CMD exec python app.py