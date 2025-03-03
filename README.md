## What

 self-hosted monitoring solution covering machine stats, APM, logs, and uptime monitoring

## How They Work Together

✅ **Prometheus** scrapes your app's `/metrics` endpoint.  
✅ **Loki** ingests logs (via Promtail, Fluentd, or Filebeat).  
✅ **Tempo** collects tracing data (via OpenTelemetry).  
✅ **Grafana** connects to all these sources for visualization.  

---

### **Component Overview**
| Component      | Purpose                                         |
|--------------|------------------------------------------------|
| **Prometheus**  | Collects metrics from your apps             |
| **Loki**       | Collects logs from your apps                |
| **Tempo**      | Collects distributed traces                 |
| **Grafana**    | Visualizes everything in one dashboard      |

---

### **Service Endpoints**
| Service                 | URL                                    |
|-------------------------|----------------------------------------|
| **Grafana (Dashboards)** | [http://your-server-ip:3000](http://your-server-ip:3000) (admin/admin123) |
| **Prometheus (Metrics Collection)** | [http://your-server-ip:9090](http://your-server-ip:9090) |
| **Loki (Logs Aggregation)** | [http://your-server-ip:3100](http://your-server-ip:3100) |
| **Tempo (APM Tracing)** | [http://your-server-ip:3200](http://your-server-ip:3200) |
| **Node Exporter (Server Stats)** | [http://your-server-ip:9100](http://your-server-ip:9100) |
| **cAdvisor (Container Metrics)** | [http://your-server-ip:8080](http://your-server-ip:8080) |
| **Blackbox Exporter (Uptime Checks)** | [http://your-server-ip:9115](http://your-server-ip:9115) |

---

### **Detailed Component Functions**
| Component          | Purpose |
|-------------------|------------------------------------------------|
| **Prometheus**     | Metrics collection (server stats, app telemetry) |
| **Grafana**        | Visualization and dashboards |
| **Loki**          | Log aggregation |
| **Tempo**         | Application Performance Monitoring (APM) with distributed tracing |
| **Blackbox Exporter** | Uptime and availability monitoring |
| **Node Exporter**  | Server resource monitoring (CPU, RAM, Disk, Network) |
| **cAdvisor**      | Container performance monitoring (if using Docker) |

