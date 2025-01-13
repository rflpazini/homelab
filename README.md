# Homelab

This repository serves as a central hub for all the application configurations used in my homelab setup. It’s designed to simplify managing, maintaining, and scaling homelab services.

---

## 🏠 Current Configurations

### **homeassistant**
Configuration for [Home Assistant](https://www.home-assistant.io/), an open-source platform for automating and controlling smart home devices.

- **File**: `homeassistant/compose.yml`

---

### **Homepage**
[Homepage](https://gethomepage.dev/) is a customizable dashboard for your homelab, providing a centralized access point for services and tools.

- **Files**:
  - `homepage/compose.yml`
  - `homepage/services.yaml`

---

### **immich**
Configuration for [Immich](https://github.com/immich-app/immich), a self-hosted photo and video backup solution.

- **File**: `immich/compose.yml`

---

### **influxdb**
Configuration for [InfluxDB](https://www.influxdata.com/), a time-series database for metrics and analytics.

- **File**: `influxdb/compose.yml`

---

### **nextcloud**
Configuration for [Nextcloud](https://nextcloud.com/), a self-hosted file storage and sharing platform.

- **File**: `nextcloud/compose.yml`

---

### **nginx-proxy-manager**
Configuration for [Nginx Proxy Manager](https://nginxproxymanager.com/), a reverse proxy manager with a user-friendly interface.

- **File**: `nginx-proxy-manager/compose.yml`

---

### **speedtest-tracker**
Configuration for [Speedtest Tracker](https://github.com/henrywhitaker3/Speedtest-Tracker), a self-hosted tool for tracking internet speed over time.

- **File**: `speedtest-tracker/compose.yml`

---

### **uptimekuma**
Configuration for [Uptime Kuma](https://github.com/louislam/uptime-kuma), a self-hosted monitoring tool to track service uptime.

- **File**: `uptimekuma/compose.yml`

---

## 📦 Future Plans

This repository will continue to grow and include more configurations for tools and services to improve my homelab setup. Planned additions include:

- **Monitoring Tools**: Prometheus, Grafana, or Netdata.
- **Backup Services**: Restic or Velero.
- **Media Services**: Jellyfin or Plex.
- **Advanced Networking**: Traefik or Caddy configurations.

Feel free to fork and adapt this repository to your own homelab!
