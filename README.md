### Spring Micrometer Prometheus Example Project

This project demonstrates how to send metrics to Prometheus form your Spring Boot application.

#### Instructions

0. Run Maven to build the Spring jar: mvn clean package -DskipTests
1. Make sure Docker Desktop is running
2. Run docker-compose up
3. Go to localhost:3000, sign in with admin, admin.
4. Make a new Data source and point it to Prometheus via browser
5. Import the JVM Micrometer dashboard by pasting in:  https://grafana.com/grafana/dashboards/4701

#### Key Files

- docker-compose.yml
- Dockerfile
- prometheus.yml
- src/main/resources/application.yml

#### Reference
Grafana UI
- localhost:3000 admin, admin

Prometheus UI
- localhost:9090

View Prometheus Data Export
- localhost:9000/actuator/prometheus

JVM Micrometer Grafana Dashboard
- https://grafana.com/grafana/dashboards/4701

Online Guide
- https://stackabuse.com/monitoring-spring-boot-apps-with-micrometer-prometheus-and-grafana/