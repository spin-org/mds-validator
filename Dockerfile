from python:3
MAINTAINER joshua@spin.pm

COPY Pipfile Pipfile.lock /app/
WORKDIR /app

RUN pip install pipenv
RUN pipenv install --system --deploy

COPY . /app

ENTRYPOINT ["python", "validator.py"]
