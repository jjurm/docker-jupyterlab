FROM jupyter/datascience-notebook:python-3.8
LABEL authors="jjurm"

USER root

RUN apt-get -y update && apt-get -y install graphviz

USER jovyan

RUN pip install "jupyter_server>=2.0.0" jupyterlab-link-share

EXPOSE 8888

USER jovyan

ENV JUPYTER_PASSWORD_HASH=""
CMD [ \
    "/opt/conda/bin/jupyter", \
    "lab", \
    "--collaborative", \
    "--ServerApp.certfile=/opt/fullchain.pem", \
    "--ServerApp.keyfile=/opt/privkey.pem", \
    "--ServerApp.ip=0.0.0.0", \
    "--ServerApp.root_dir=/home/jovyan/work", \
    "--ServerApp.open_browser=False", \
    "--ServerApp.password=\"${JUPYTER_PASSWORD_HASH}\"", \
    "--ServerApp.password_required=True", \
    "--ServerApp.port=8888", \
    "--ServerApp.port_retries=0" \
    ]
