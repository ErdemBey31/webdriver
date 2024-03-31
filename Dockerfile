FROM python:3.9

WORKDIR app

COPY . .

RUN apt update -y

RUN apt install chromium chromium-driver -y

RUN pip install -r requirements.txt

CMD ["gunicorn", "app:app", "&", "python", "site.py"]
