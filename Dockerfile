FROM python:2.7-stretch

LABEL description="ElastAlert suitable for Kubernetes and Helm"
LABEL maintainer="Tibor Kiss <tibor.kiss@gmail.com>"

RUN pip install elastalert==0.1.29

VOLUME [ "/elastalert/config", "/elastalert/rules" ]

ADD files /

ENTRYPOINT ["/run.sh"]