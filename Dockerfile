FROM bigboards/base-__arch__

MAINTAINER bigboards <hello@bigboards.io>

# Download Hive
RUN curl -s http://apt.bigboards.io/projects/kibana/kibana-4.1.2-linux-__arch__.tar.gz | tar -xz -C /opt
RUN cd /opt && ln -s ./kibana-4.1.2-linux-__arch__ kibana

ENV KIBANA_HOME /opt/kibana

CMD ["/opt/kibana/bin/kibana"]
