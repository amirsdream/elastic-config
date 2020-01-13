docker run -d --privileged\
  --name=filebeat \
  --user=root \
  --volume="`pwd`/config/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro" \
  --net=elk \
  --restart=always \
  docker.elastic.co/beats/filebeat:7.4.2 filebeat -e -strict.perms=false 
#  -E output.elasticsearch.hosts=["elasticsearch:9200"] 
#  -E setup.kibana.host=http://kibana:5601
