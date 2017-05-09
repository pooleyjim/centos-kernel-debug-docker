# centos-kernel-debug-docker
This image provides a clean way to install the necessary tools to analyse kernel crash dumps.
## Usage
```bash
DEBUG_KERNEL="kernel-$(uname -r)"
HOST_VOLUME="./dumps"
docker run -it -e DEBUG_KERNEL=$DEBUG_KERNEL -v $HOST_VOLUME:/var/crash/
```
Place your vmcore file from your kernel dump in the provided dumps folder or change the path to where your dump file is.
