#!/bin/bash

LOG_FILE="logs/monitor.log"

echo "========================================="
echo " Linux System Monitoring Script"
echo "========================================="

echo "Date: $(date)"
echo ""

# Disk Usage
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
disk=${disk_usage%\%}

echo "Disk Usage : $disk_usage"

if [ "$disk" -ge 80 ]
then
    echo "WARNING: Disk usage is above 80%"
    echo "$(date) - WARNING: Disk usage is $disk_usage" >> "$LOG_FILE"
else
    echo "Disk usage is Normal"
fi

echo ""

# Memory Usage
memory=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Memory Usage : $memory%"

if [ "$memory" -ge 80 ]
then
    echo "WARNING: Memory usage is above 80%"
    echo "$(date) - WARNING: Memory usage is $memory%" >> "$LOG_FILE"
else
    echo "Memory usage is Normal"
fi
#!/bin/bash

LOG_FILE="logs/monitor.log"

echo "========================================="
echo " Linux System Monitoring Script"
echo "========================================="

echo "Date: $(date)"
echo ""

# Disk Usage
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
disk=${disk_usage%\%}

echo "Disk Usage : $disk_usage"

if [ "$disk" -ge 80 ]
then
    echo "WARNING: Disk usage is above 80%"
    echo "$(date) - WARNING: Disk usage is $disk_usage" >> "$LOG_FILE"
else
    echo "Disk usage is Normal"
fi

echo ""

# Memory Usage
memory=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Memory Usage : $memory%"

if [ "$memory" -ge 80 ]
then
    echo "WARNING: Memory usage is above 80%"
    echo "$(date) - WARNING: Memory usage is $memory%" >> "$LOG_FILE"
else
    echo "Memory usage is Normal"
fi

echo ""

# CPU Usage
cpu=$(top -bn1 | awk -F'id,' '/Cpu/ {split($1,a,","); gsub(/ /,"",a[length(a)]); print int(100-a[length(a)])}')
echo "CPU Usage : $cpu%"

if [ "$cpu" -ge 80 ]
then
    echo "WARNING: CPU usage is above 80%"
    echo "$(date) - WARNING: CPU usage is $cpu%" >> "$LOG_FILE"
else
    echo "CPU usage is Normal"
fi
