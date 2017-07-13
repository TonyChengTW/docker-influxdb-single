# influxdb version : 0.12.2-1

FROM tonychengtw/ubuntu-minimum-armhf:16.04
MAINTAINER Tony Cheng <tony.pig@gmail.com>

COPY files/influxdb.key /tmp
COPY files/influxdb_0.12.2-1_armhf.deb /tmp
#RUN apt-key add /tmp/influxdb.key && \
#    echo 'deb https://repos.influxdata.com/ubuntu/ xenial stable' > /etc/apt/sources.list.d/influxdb.list && \
#    export DEBIAN_FRONTEND='noninteractive' && \
#    (apt-get update||true) && \
#    apt-get install -y --no-install-recommends influxdb-client python-influxdb influxdb
RUN  dpkg -i /tmp/influxdb_0.12.2-1_armhf.deb && \
     rm -f /tmp/influxdb_0.12.2-1_armhf.deb

VOLUME ["/var/lib/influxdb"]
EXPOSE 8086
COPY files/influxdb.conf /etc/influxdb/influxdb.conf

CMD influxd -config /etc/influxdb/influxdb.conf
