FROM node:12.16.2-alpine3.11

ENV TERRAFORM_VERSION 0.12.24

RUN apk --update --no-cache add libc6-compat git openssh-client python py-pip python3 curl && pip install awscli
RUN apk add zip
RUN cd /usr/local/bin && \
    curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip