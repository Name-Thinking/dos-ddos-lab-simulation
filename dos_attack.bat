@echo off
title DoS Simulation (ICMP Flood)
set TARGET_IP=10.230.4.202

echo Starting DoS ICMP Flood to %TARGET_IP%...
ping %TARGET_IP% -n 20 -l 65500
pause

