FROM python:alpine3.17
WORKDIR /app

COPY . .
EXPOSE 443
RUN pip3 install -r requirements.txt

CMD ["python" , "app.py"]