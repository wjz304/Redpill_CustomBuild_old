#!/usr/bin/env ash

SataPortMap=""
DiskIdxMap=""


let maxIdx=`cat /sys/block/sd*/device/syno_disk_serial | cut -c1 | sort -u | tail -n 1`
for i in $(seq 0 ${maxIdx})
do
  let idx=-1
  let idx=`cat /sys/block/sd*/device/syno_disk_serial | grep "^${i}" | cut -c2 | sort -u | tail -n 1` 2>null
  [ ${idx} -gt 8 ] && let idx=8
  SataPortMap=${SataPortMap}$((${idx}+1))
done

let num=0
for i in $(seq 1 ${#SataPortMap})
do
  let n=${SataPortMap:${i}-1:1}
  if [ ${n} -eq 0 ]; then
    DiskIdxMap=${DiskIdxMap}`printf "%02x" 255`
  else
    DiskIdxMap=${DiskIdxMap}`printf "%02x" ${num}`
  fi
  let num+=n
done

echo DiskIdxMap: ${DiskIdxMap}
if [ "$(echo ${SataPortMap} | grep '0')" != "" ]; then  
  echo 'SataPortMap: null   # Do not fill in this parameter!'
else
  echo SataPortMap: ${SataPortMap}
fi


