FROM python:3.9-alpine
ADD . /appstack
WORKDIR /appstack
RUN pip install -r requirements.txt
CMD ["python", "app.py"]