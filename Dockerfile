FROM python:alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN apk add --update alpine-sdk libffi libffi-dev openssl openssl-dev && pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["/usr/local/bin/oci"]
CMD []
