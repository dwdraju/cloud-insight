FROM python:3.8-alpine

WORKDIR /home/app

RUN adduser --home /app --shell /bin/sh --disabled-password --gecos "App" app
RUN chown -R app:app /home/app
USER app

COPY --chown=app:app . /home/app

RUN pip install --user -r requirements.txt

EXPOSE 5000

CMD python app.py
