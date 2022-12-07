FROM python:3.10

WORKDIR /.

COPY requirements.txt /.
RUN pip3 install --user -r requirements.txt
COPY . . 

RUN apt-get -y update
RUN apt-get install -y ffmpeg
#RUN pip3 install --user -r requirements.txt

RUN pip3 uninstall -y ffmpeg-python
RUN pip3 uninstall -y ffmpeg

RUN pip3 install ffmpeg-python

#ENTRYPOINT ["/usr/bin/python3", "app.py"]

CMD ["/usr/bin/python3","app.py"]