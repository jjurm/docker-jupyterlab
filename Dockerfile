FROM jupyter/datascience-notebook:python-3.8
LABEL authors="jjurm"

USER root
RUN apt-get -y update && apt-get -y install graphviz

USER jovyan
RUN pip install "jupyter_server>=2.0.0" jupyterlab-link-share

USER root
COPY scripts/cmd.sh /opt/cmd.sh
RUN chmod a+x /opt/cmd.sh

EXPOSE 8888

USER jovyan
ENV JUPYTER_PASSWORD_HASH=""
CMD /opt/cmd.sh
