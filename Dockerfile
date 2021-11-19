FROM python:alpine3.7
COPY . /myapp
WORKDIR /myapp
RUN pip install --upgrade pip; apk add build-base;
RUN pip install -r requirements.txt
EXPOSE 7070
CMD ["python", "app.py"]


