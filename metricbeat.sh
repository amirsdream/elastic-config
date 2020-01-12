docker run -d \
  --name=metricbeat \
  --volume="`pwd`/config/metricbeat.yml:/usr/share/metricbeat/metricbeat.yml:ro" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  --volume="/sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro" \
  --volume="/proc:/hostfs/proc:ro" \
  --volume="/:/hostfs:ro" \
  --net=elk \
  --restart=always \
  docker.elastic.co/beats/metricbeat:7.4.2 metricbeat -e \
  -E output.elasticsearch.hosts=["elasticsearch:9200"] \
  -E setup.kibana.host=kibana:5601
