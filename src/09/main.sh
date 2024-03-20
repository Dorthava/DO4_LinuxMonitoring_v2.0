#!/bin/bash

html="/var/www/metrics/metrics.html"

while true
do
ram_total=$(free | grep "Mem:" | awk '{print $2}')
ram_used=$(free | grep "Mem:" | awk '{print $3}')
hard_disk=$(df | grep "/$" | awk '{printf $2}')
hard_disk_used=$(df | grep "/$" | awk '{printf $4}')
cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
if [[ $cpu_idle =~ ^id,$ ]]; then
cpu_idle="100.0"
fi
    cat << EOF > $html
# HELP cpu_idle total user and system CPU time spent in seconds.
# TYPE cpu_idle gauge
cpu_idle $cpu_idle
# HELP ram_used used ram
# TYPE ram_used gauge
ram_used $ram_used
# HELP ram_total total ram
# TYPE ram_total gauge
ram_total $ram_total
# HELP hard_disk total hard_disk
# TYPE hard_disk gauge
hard_disk $hard_disk
# HELP hard_disk_total total hard disk usage
# TYPE hard_disk_total gauge
hard_disk_total $hard_disk_used
EOF
sleep 5
done