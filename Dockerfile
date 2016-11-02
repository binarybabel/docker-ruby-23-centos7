FROM centos/ruby-23-centos7

MAINTAINER BinaryBabel OSS <oss@binarybabel.org>

USER 0

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y --setopt=tsflags=nodocs file ImageMagick sshpass && \
    yum remove -y nodejs npm && \
    yum clean all -y

RUN curl -sL https://rpm.nodesource.com/setup_5.x | bash -

RUN yum install -y --setopt=tsflags=nodocs nodejs && \
    yum clean all -y

USER 1001
