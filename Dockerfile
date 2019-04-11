FROM mongo:4.0

RUN apt-get update && apt-get -y install cron awscli python-pip
RUN pip install awscli-plugin-endpoint

RUN mkdir /root/.aws


ENV CRON_TIME="0 3 * * *" \
  TZ=US/Eastern \
  CRON_TZ=US/Eastern

ADD run.sh /run.sh
CMD /run.sh
