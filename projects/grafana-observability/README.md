## Observability Study Repository

This repository is a personal guide and reference for creating a local observability environment with open source tools and learn more about it.

<img src="../../docs/logs-example.png" />

### OpenSource Tools Used

<p>
 <img src="https://img.shields.io/badge/-Grafana-F05032?style=flat-square&logo=grafana&logoColor=white" />
 <img src="https://img.shields.io/badge/-Alloy-F05032?style=flat-square&logo=grafana&logoColor=white" />
 <img src="https://img.shields.io/badge/-Loki-4f54ff?style=flat-square&logo=grafana&logoColor=white" />
 <img src="https://img.shields.io/badge/-Prometheus-000000?style=flat-square&logo=prometheus&logoColor=white" />
 <img src="https://img.shields.io/badge/-Jaeger-007ACC?style=flat-square&logo=jaeger&logoColor=white" />
 <img src="https://img.shields.io/badge/-cAdvisor-007ACC?style=flat-square&logo=google&logoColor=white" />
</p>

- [Grafana](https://grafana.com/docs/grafana/latest/): To visualize and create custom and personal dashboards
- [Grafana Alloy](https://grafana.com/docs/alloy/latest/?section=open-source-oss): Log Scrapper agent to learn more about it's syntax of ETL processing and log scrapping
  - Currently i'm using an approach to scrape logs directly from my docker containers applications running locally and aggregate those in loki to be viewed in Grafana
- [Grafana Loki](https://grafana.com/docs/loki/latest/): Log Aggregator to receive and aggragate logs from different sources.
  - Currently i'm using an apporach using Grafana Alloy to send logs from docker to loki
- [Prometheus](https://prometheus.io/docs/introduction/overview/): Monitoring and Alerting to receive and retain metrics compatible with Grafana visualization
- [cAdvisor](https://github.com/google/cadvisor): Container advisor from google to grab the resource usage and performance characteristics of running containers. It is a running daemon that collects, aggregates, processes, and exports information about running containers.
  - Currently i'm using it to sendo docker container metrics to [Prometheus](https://prometheus.io/docs/guides/cadvisor/) and make it available in Grafana
- [Jaeger](https://www.jaegertracing.io/docs/2.3/getting-started/): Distributed Tracing plataform used to receive application instrumented tracing information and expose this data as metrics compatible with Grafana visualization
  - Currently i'm using this service as a [OpenTelemetry-Receiver](https://opentelemetry.io/docs/collector/building/receiver/) and processor to enable it to Grafana visualization
- ~~[ElasticSearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html): Backend storage that would be used by Prometheus~~


### Running the infrastructure
## **Keep in mind that the network "observability" which is pointing to an external network in the networks section of the docker-compose and used in the services is something specific to MY LOCAL SETUP AND IT SHOULD BE REMOVED BEFORE RUNNING THE DOCKER-COMPOSE command**

```bash
docker-compose -p="observability-stack" up -d
```
or running the provided script
```bash
./up.sh
```

### More usefull links 

- [OpenTelemetry Demo Project](https://opentelemetry.io/docs/demo/architecture/)