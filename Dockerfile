FROM python:3.12.0-alpine3.18

RUN mkdir "/usr/bin/automation"

RUN apk update && \
    apk add openjdk11-jre curl tar && \
    curl -o allure-2.13.8.tgz -Ls https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.13.8/allure-commandline-2.13.8.tgz && \
    tar -zxvf allure-2.13.8.tgz -C /opt/ && \
    ln -s /opt/allure-2.13.8/bin/allure /usr/bin/allure && \
    rm allure-2.13.8.tgz


COPY ./ /usr/bin/automation

WORKDIR /usr/bin/automation

RUN pip install pytest
RUN python3 -m pip install .
#Install Python dependencies
