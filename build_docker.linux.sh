docker build -t ubuntu.base -f ${PWD}/docker/base/Dockerfile .
docker build -t ubuntu.conda -f ${PWD}/docker/conda/Dockerfile .
docker build -t ubuntu.jupylab -f ${PWD}/docker/jupylab/Dockerfile .
