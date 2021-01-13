FROM bitnami/kubectl:latest

COPY init-kubectl kubectl /opt/sinlead/kubectl/bin/

USER root

ENV PATH="/opt/sinlead/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
