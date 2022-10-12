FROM python:3.10.6

COPY ./requirements.txt /smart_home/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /smart_home/requirements.txt

COPY . /smart_home

EXPOSE 8000

WORKDIR smart_home

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


