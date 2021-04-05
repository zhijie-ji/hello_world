FROM python:3.6
COPY .  /hello_world
WORKDIR /hello_world
RUN pip install -r requirements.txt
EXPOSE  8000
CMD ["python", "src/main.py"]


