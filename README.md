# docker-activemq
This is a docker image with ActiveMQ.

# Quick Start

You can run a simple activemq server using the docker command line :

```bash
sudo docker run -d -P lhcpig/activemq
```

You can add `-p` param to binding container ports :

```bash
sudo docker run -d -p 8161:8161 -P lhcpig/activemq
```

# Data Store
The activemq will save data to `/host/path`. You can change the path where you want.

```bash
sudo docker run -d -P -v /host/path:/opt/activemq/data lhcpig/activemq
```


