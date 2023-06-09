/opt/conda/bin/jupyter lab \
  --collaborative \
  --ServerApp.certfile=/opt/fullchain.pem \
  --ServerApp.keyfile=/opt/privkey.pem \
  --ServerApp.ip=0.0.0.0 \
  --ServerApp.root_dir=/home/jovyan/work \
  --ServerApp.open_browser=False \
  --ServerApp.password="${JUPYTER_PASSWORD_HASH}" \
  --ServerApp.password_required=True \
  --ServerApp.port=8888 \
  --ServerApp.port_retries=0
