FROM jupyter/datascience-notebook:python-3.8
LABEL authors="jjurm"

USER root

RUN apt-get -y update && apt-get -y install graphviz

USER jovyan

RUN pip install "jupyter_server>=2.0.0" jupyterlab-link-share

EXPOSE 8888

USER jovyan

COPY scripts/cmd.sh /opt/cmd.sh
RUN chmod u+x /opt/cmd.sh
ENV JUPYTER_PASSWORD_HASH=""
CMD /opt/cmd.sh
