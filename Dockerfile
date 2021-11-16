FROM bitnami/kubectl:1.21

LABEL maintainer "Sinlead <opensource@sinlead.com>"

COPY init-kubectl kubectl /opt/sinlead/kubectl/bin/

USER root

ENV PATH="/opt/sinlead/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
