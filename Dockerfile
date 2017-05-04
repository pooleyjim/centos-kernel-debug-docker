FROM centos:7
COPY files /
RUN chmod +x /debug_setup/run.sh
ENTRYPOINT /bin/bash /debug_setup/run.sh
