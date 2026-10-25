#!/bin/bash
# Estrae solo il numero della percentuale tramite nvidia-smi
nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{print $1"%"}'
