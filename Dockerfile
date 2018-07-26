FROM centos:centos7

# run essentials
#
RUN yum install -y epel-release*

RUN yum update -y

RUN yum install -y wget which unzip 

RUN yum install -y gcc gcc-c++ make

RUN yum install -y cmake cmake3

# gcc6
RUN yum install -y centos-release-scl

RUN yum install -y devtoolset-6-gcc*

RUN echo -e '#!/bin/bash\nscl enable devtoolset-6 bash' > /usr/bin/devtoolset-6 && \
    chmod +x /usr/bin/devtoolset-6

# gcc7
RUN yum install -y devtoolset-7-gcc*

RUN echo -e '#!/bin/bash\nscl enable devtoolset-6 bash' > /usr/bin/devtoolset-7 && \
    chmod +x /usr/bin/devtoolset-7

