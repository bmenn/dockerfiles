FROM centos:centos7

MAINTAINER Bryant Menn

RUN yum -y install make ctags-etags epel-release tar
RUN yum -y install ocaml
RUN cd /tmp && curl http://www.seas.upenn.edu/~bcpierce/unison//download/releases/stable/unison-2.48.3.tar.gz | tar xz
RUN cd /tmp/unison-2.48.3 && make UISTYLE=text
RUN cp /tmp/unison-2.48.3/unison /bin/unison
RUN yum -y autoremove make ctags-etags epel-release ocaml tar
RUN rm -rf /tmp/unison-2.48.3

RUN mkdir -p /var/log/unison
RUN ln -sf /dev/stdout /var/log/unison/unison.log
RUN ln -sf /dev/stderr /var/log/unison/error.log


ENTRYPOINT ["/bin/unison"]
CMD ["-socket", "5000"]
