FROM python:3.8

ADD requirements.txt requirements.txt
ADD src src

RUN mkdir /resources
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "src/youtube-downloader.py", "/resources"]