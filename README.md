# Synapse-1.6.1

## Introduction
A Python client for [Synapse](https://www.synapse.org/), a collaborative compute space that allows scientists to share and analyze data together. The Python client can be used as a library for development of software that communicates with Synapse or as a command-line utility.

## Availability

### Using Docker image

Since there are several dependencies (these can be seen in Dockerfile) for running synapse on your linux or MAC OS, it is highly recommend using the available [Docker image](https://hub.docker.com/r/upendradevisetty/synapse/) or the [Dockerfile](https://github.com/upendrak/synapse/blob/master/Dockerfile) to build an image and then use the built image. Docker can be installed on any of three platform using the instructions from Docker website.

```
### Pull the image from Dockerhub
docker pull upendradevisetty/synapse:1.6.1
```

```
### See the command line help for the image
docker pull upendradevisetty/synapse:1.6.1 -h
Usage : sh /usr/bin/synapse_wrapper.sh -u username -p password -i id -o output

  -u username
  -p password
  -i synapse id (one) or file containing multiple id's
  -o output
  -h Show this usage information
```

```
# Run synapse on a test data
docker run upendradevisetty/synapse:1.6.1 -u <username> -p <password> -i <synpase_id> -o <output_folder>

# Example
docker run upendradevisetty/synapse:1.6.1 -u testun -p testpw -i syn8656508 -o test_out
```