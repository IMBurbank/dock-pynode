# Dock-pynode

Python-NodeJS Dockerfiles.

## Docker Hub Repo

`dget/dock-pynode`

## Tags

- `py3.7-node8` ([dockerfiles/debian/stretch-slim/base/pyx-nodex.Dockerfile](https://github.com/IMBurbank/dock-pynode/blob/master/dockerfiles/debian/stretch-slim/base/pyx-nodex.Dockerfile))
- `py3.7-node10` ([dockerfiles/debian/stretch-slim/base/py37-node10.Dockerfile](https://github.com/IMBurbank/dock-pynode/blob/master/dockerfiles/debian/stretch-slim/base/py37-node10.Dockerfile))

## Usage Example

```bash
docker run -u $(id -u):$(id -g) -w /workdir -v $(pwd):/workdir:rw -it dget/dock-pynode:py3.7-node10
```