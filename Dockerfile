FROM centos:centos6

ADD ./glusterd.sh /
RUN yum update -y \
 && yum -y install centos-release-gluster312 \
 && yum -y install glusterfs-server
CMD ["sh", "glusterd.sh"]