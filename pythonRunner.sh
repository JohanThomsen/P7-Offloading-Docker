#!/bin/bash

set -e
exec python3.10 cpuFreq.py &
exec python3.10 handler.py