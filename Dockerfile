FROM python:3.10

WORKDIR /.

COPY . .
COPY requirements.txt . 

RUN apt-get -y update
RUN apt-get install -y ffmpeg
RUN pip install --user -r requirements.txt

RUN pip3 uninstall -y ffmpeg-python
RUN pip3 uninstall -y ffmpeg

#RUN pip3 install python-ffmpeg
RUN pip3 install ffmpeg-python


ENTRYPOINT ["/usr/bin/python3", "app.py"]
#CMD ["python3","app.py"]