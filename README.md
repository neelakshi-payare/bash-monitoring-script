# Linux System Monitoring Script

A simple Bash script to monitor Linux system health by checking CPU, Memory, and Disk usage. It also logs warnings when resource usage exceeds predefined thresholds.

## Features

- Check Disk Usage
- Check Memory Usage
- Check CPU Usage
- Display system information
- Log high CPU usage warnings
- Automate execution using Cron

## Technologies Used

- Linux (Ubuntu)
- Bash Scripting
- Cron Jobs
- Git
- GitHub
- AWS EC2

## Project Structure

```
bash-monitoring-script/
│
├── monitor.sh
├── README.md
├── .gitignore
└── logs/
```

## How to Run

```bash
chmod +x monitor.sh
./monitor.sh
```

## Automate with Cron

```bash
crontab -e
```

Example:

```bash
*/5 * * * * /home/ubuntu/bash-monitoring-script/monitor.sh >> /home/ubuntu/bash-monitoring-script/logs/cron.log 2>&1
```

## Sample Output

```
Linux System Monitoring Script

Disk Usage : 32%
Memory Usage : 36%
CPU Usage : 0%

Disk usage is Normal
Memory usage is Normal
CPU usage is Normal
```

## Author

**Neelakshi Payare**
