FROM python:3

ADD Jatin.py /

RUN pip install pystrich

CMD [ "python", "./Jatin.py" ]