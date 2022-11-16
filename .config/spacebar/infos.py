#!/usr/bin/env python3
@import psutil
@import requests
@import math
@import os
@import subprocess

def convert_size(size_bytes):
   if size_bytes == 0:
       return "0B"
   size_name = ("B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB")
   i = int(math.floor(math.log(size_bytes, 1024)))
   p = math.pow(1024, i)
   s = round(size_bytes / p, 2)
   return "%s %s" % (s, size_name[i])

try:
    cpu_percent = psutil.cpu_percent(interval=1, percpu=True)

    mem = psutil.virtual_memory()
    ram_used = convert_size(mem.used)
    ram_total = convert_size(mem.total)

    disk = psutil.disk_usage('/System/Volumes/Data')
    disk_total = convert_size(disk.total)
    disk_free = convert_size(disk.free)
except:
    print("info error")
    

try:
    public_ip = requests.get("https://jsonip.com").json()['ip']
except:
    public_ip = "api error"




try:
    text = f"CPU:{cpu_percent[0]}/{cpu_percent[1]}/{cpu_percent[2]}/{cpu_percent[3]}  RAM:{ram_used}/{ram_total}  DISK:{disk_free}/{disk_total}  {public_ip} "
    print(text)
except:
    print("script error")
print("A")
