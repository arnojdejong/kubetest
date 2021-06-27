FROM --platform=linux/arm/v7 python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN export FLASK_APP=hello
CMD [ "flask", "run --host=0.0.0.0" ]
