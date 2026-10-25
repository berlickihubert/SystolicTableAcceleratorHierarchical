#!/usr/bin/env bash
# monitoruje zuzycie RAM w tle, zapisuje do flow/ram_trace.log co INTERVAL sekund
# uzycie: ./monitor_ram.sh &   (odpal przed build_sky130.sh, zabij z killem po zakonczeniu)

INTERVAL=5
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG="$HERE/ram_trace.log"

echo "timestamp total_mb used_mb free_mb available_mb swap_used_mb eda_rss_mb eda_proc" > "$LOG"

while true; do
    ts=$(date '+%Y-%m-%d %H:%M:%S')
    read -r total used free_ shared buffcache available <<< "$(free -m | awk '/^Mem:/ {print $2, $3, $4, $5, $6, $7}')"
    swap_used=$(free -m | awk '/^Swap:/ {print $3}')
    # tylko procesy EDA (yosys/openroad/magic/netgen/klayout/openlane), nie caly system
    eda_line=$(ps -eo rss,comm | grep -iE 'yosys|openroad|magic|netgen|klayout|openlane' | sort -rn | head -1)
    eda_rss_kb=$(echo "$eda_line" | awk '{print $1}')
    eda_name=$(echo "$eda_line" | awk '{print $2}')
    eda_rss_mb=0
    [ -n "$eda_rss_kb" ] && eda_rss_mb=$(( eda_rss_kb / 1024 ))
    [ -z "$eda_name" ] && eda_name="none"

    echo "$ts $total $used $free_ $available $swap_used $eda_rss_mb $eda_name" >> "$LOG"
    sleep "$INTERVAL"
done
