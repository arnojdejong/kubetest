ARG ARCH=
FROM ${ARCH}python:3-alpine
EXPOSE 5000

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD [ "python", "hello.py" ]
