FROM ubuntu:16.04
ENV PACKAGES python-dev git python-setuptools python-pip

ENV BRANCH=develop
ENV VERSION=6ba6a3ebde81fe8ed4d0c231ab42c613aa03334f

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES}

RUN git clone -b ${BRANCH} git://github.com/Sage-Bionetworks/synapsePythonClient.git && \
    cd synapsePythonClient && \
    git checkout ${VERSION} && \
    python setup.py develop

ENTRYPOINT ["synapse"]
CMD ["-h"]
