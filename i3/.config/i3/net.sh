#!/usr/bin/env bash

# This script measures real-time network throughput for i3status/i3bar.
# It reads the number of received (RX) and transmitted (TX) bytes directly
# from /sys/class/net/<interface>/statistics every second and calculates
# the difference between two consecutive reads.
#
# The result gives the current download (RX) and upload (TX) speed in:
#   - B/s  (bytes per second)
#   - KB/s (kilobytes per second)
#   - MB/s (megabytes per second)
#
# The script writes the formatted result into /tmp/netload so that i3status
# can display it via the read_file module.
#
# Key points:
#  - Extremely lightweight (no external programs, just reading sysfs).
#  - Works with WiFi and Ethernet (set IF="your_interface_name").
#  - Runs in an infinite loop and updates the output once per second.
#  - i3status reads /tmp/netload on each refresh and shows:
#        NET ↓<download> ↑<upload>
#
# Useful for monitoring real-time network activity directly in the i3 bar.
#!/usr/bin/env bash

# Simple network throughput monitor for i3status.
# Writes current RX/TX speed to /tmp/netload once per second.

OUT="/tmp/netload"
LOG="/tmp/net.log"

echo "[$(date)] net.sh starting..." >>"$LOG"

# Try to detect interface automatically (the one used to reach 1.1.1.1).
IF=$(ip route get 1.1.1.1 2>/dev/null | awk '{for(i=1;i<=NF;i++) if($i=="dev") print $(i+1)}' | head -n1)

# Fallback if detection fails
if [ -z "$IF" ]; then
  IF="wlan0"
fi

echo "[$(date)] Using interface: $IF" >>"$LOG"

human() {
  local B=$1
  if [ "$B" -lt 1024 ]; then
    echo "${B}B/s"
  elif [ "$B" -lt 1048576 ]; then
    echo "$((B / 1024))KB/s"
  else
    echo "$((B / 1024 / 1024))MB/s"
  fi
}

while true; do
  if [ ! -e "/sys/class/net/$IF/statistics/rx_bytes" ]; then
    echo "NET no-if($IF)" >"$OUT"
    echo "[$(date)] /sys/class/net/$IF/statistics/rx_bytes not found" >>"$LOG"
    sleep 2
    continue
  fi

  RX1=$(cat /sys/class/net/$IF/statistics/rx_bytes 2>>"$LOG")
  TX1=$(cat /sys/class/net/$IF/statistics/tx_bytes 2>>"$LOG")
  sleep 1
  RX2=$(cat /sys/class/net/$IF/statistics/rx_bytes 2>>"$LOG")
  TX2=$(cat /sys/class/net/$IF/statistics/tx_bytes 2>>"$LOG")

  RX=$((RX2 - RX1))
  TX=$((TX2 - TX1))

  echo "NET ↓$(human "$RX") ↑$(human "$TX")" >"$OUT"
done
