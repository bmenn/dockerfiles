FROM centos:centos7

MAINTAINER Bryant Menn

RUN yum -y install tar
RUN cd /tmp && curl -L https://github.com/syncthing/syncthing/releases/download/v0.10.30/syncthing-linux-amd64-v0.10.30.tar.gz | tar xz
RUN cp /tmp/syncthing-linux-amd64-v0.10.30/syncthing /bin/syncthing && mkdir -p /etc/syncthing

ENTRYPOINT ["/bin/syncthing"]
CMD ["-home=/etc/syncthing", "-gui-address=:8384"]
