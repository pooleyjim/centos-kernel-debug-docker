# centos-kernel-debug-docker
This image provides a clean way to install the necessary tools to analyse kernel crash dumps.
## Usage
```bash
DEBUG_KERNEL="kernel-$(uname -r)"
HOST_VOLUME="./dumps"
docker run -e DEBUG_KERNEL=$DEBUG_KERNEL -v $HOST_VOLUME:/var/crash/
```
