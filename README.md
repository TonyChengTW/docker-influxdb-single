# InfluxDB Cluster Setup

*InfluxDB version: `0.11.1`*

Start Docker
```ini
$ docker run --name influxdb --restart always -d -p 8086:8086 -v /sdb1/docker-volume/influx:/var/lib/influxdb influxdb
```
