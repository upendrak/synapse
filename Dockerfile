FROM ubuntu:14.04.3
MAINTAINER Upendra Devisetty <upendra@cyverse.org>
LABEL Description "This Dockerfile is used for Synapse Client 1.7.3"

RUN apt-get update && apt-get install -y git python-pip python
RUN pip install botocore
RUN git clone git://github.com/Sage-Bionetworks/synapsePythonClient.git
WORKDIR synapsePythonClient
#RUN git checkout develop
RUN python setup.py install

ENTRYPOINT ["synapse"]
CMD ["-h"]
