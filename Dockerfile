FROM temporalio/server:1.26.2

USER root

COPY ./config/config_template.yaml /etc/temporal/config/config_template.yaml

RUN chown -R temporal:temporal /etc/temporal

USER temporal

ENV BIND_ON_IP=0.0.0.0

CMD ["temporal", "server", "start"]
