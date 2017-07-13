# InfluxDB Cluster Setup

*InfluxDB version: `0.12.2`*

$ docker pull tonychengtw/influxdb-armhf:0.12.2

Start Docker
```ini
$ sudo docker run --name influxdb --restart always -d -p 8086:8086 -v /docker-volume/influxdb:/var/lib/influxdb tonychengtw/influxdb-armhf:0.12.2
```
