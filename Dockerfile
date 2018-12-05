FROM centos:centos6
LABEL maintainer="y-okubo"

RUN yum -y update \
 && yum -y install acl \
 && yum -y install centos-release-gluster312 \
 && yum -y install glusterfs-server

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]