FROM debian:jessie

RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy mcollective file
RUN apt-get clean
RUN rm -rf /var/lib/apt

CMD mcollectived --no-daemonize
