FROM python:3.8-slim-buster

WORKDIR /app

COPY requirement.txt requirement.txt
RUN pip3 install -r requirement.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
