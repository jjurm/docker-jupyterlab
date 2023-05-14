set -o allexport
source .env
set +o allexport

docker run \
  --rm \
  --detach \
  --name jupyterlab \
  --env JUPYTER_PASSWORD_HASH="${JUPYTER_PASSWORD_HASH}" \
  -p 8888:8888 \
  -v "${PWD}"/work:/home/jovyan/work \
  --mount type=bind,source=${FILE_PRIVKEY},target=/opt/privkey.pem,readonly \
  --mount type=bind,source=${FILE_FULLCHAIN},target=/opt/fullchain.pem,readonly \
  jjurm/jupyterlab
