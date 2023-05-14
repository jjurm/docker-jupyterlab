# docker-jupyterlab

Features:

- JupyterLab with multi-user collaboration
- SSL

Setup:

- update `.env` (from `.env.template`)

Build the container:

```bash
docker build -t jjurm/jupyterlab .
```

Run the container:

```bash
./run.sh
```
