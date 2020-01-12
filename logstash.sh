docker run -d \
	-p 5000:5000 \
	-p 9600:9600 \
  -v `pwd`/pipeline/:/usr/share/logstash/pipeline/ \
  -v `pwd`/config/logstash.yml:/usr/share/logstash/config/logstash.yml \
  --restart always \
	--network elk \
	--name logstash \
  docker.elastic.co/logstash/logstash:7.4.2
