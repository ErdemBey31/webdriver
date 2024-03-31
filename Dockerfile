FROM python:3.9

WORKDIR app

COPY . .

RUN apt install chromium chromium-driver -y

RUN pip install selenium

CMD ["python", "site.py"]
