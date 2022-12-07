FROM python:3.9

RUN mkdir /app
WORKDIR /app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir --user -r requirements.txt

COPY . .

ENTRYPOINT [ "python3", "./app.py" ]