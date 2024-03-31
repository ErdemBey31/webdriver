FROM python:3.9

WORKDIR app

COPY . .

RUN apt update -y

RUN apt install chromium chromium-driver -y

RUN pip install -r requirements.txt

CMD ["python", "site.py"]
