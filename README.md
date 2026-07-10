# Linux System Monitoring Script

## Project Overview

This project is a Bash-based Linux monitoring script developed on an AWS EC2 Ubuntu instance.

The script monitors:

- Disk Usage
- Memory Usage
- CPU Usage

If resource usage exceeds predefined thresholds, it generates warning messages and stores them in log files.

The script is automated using Cron to execute every 5 minutes.

---

## Technologies Used

- AWS EC2
- Ubuntu Linux
- Bash Shell Scripting
- Cron Scheduler

---

## Features

- Monitor Disk Usage
- Monitor Memory Usage
- Monitor CPU Usage
- Threshold-based Alerts
- Automatic Log Generation
- Scheduled Execution using Cron

---

## Project Structure

```
bash-monitoring-script/
│
├── monitor.sh
├── README.md
├── logs/
│   ├── monitor.log
│   └── cron.log
└── screenshots/
```

---

## How to Run

Give execute permission:

```bash
chmod +x monitor.sh
```

Run:

```bash
./monitor.sh
```

---

## Cron Job

The script runs automatically every 5 minutes.

```
*/5 * * * * /home/ubuntu/bash-monitoring-script/monitor.sh >> /home/ubuntu/bash-monitoring-script/logs/cron.log 2>&1
```

---

## Sample Output

```
Linux System Monitoring Script

Disk Usage : 32%
Disk usage is Normal

Memory Usage : 36%
Memory usage is Normal

CPU Usage : 0%
CPU usage is Normal
```
