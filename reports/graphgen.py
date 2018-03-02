#!/usr/bin/env python
import sys
base = sys.argv[1]
deltas = ['bat','cat','eit','nit','pat','pmt','pcr','rst','sdt','tdt','tot']
jitters = ['pcr']
f = open("template.html","r")
template = f.read()
f.close()
for delta in deltas:
  with open(base + "." + delta + "_delta_report.csv") as f:
    data = f.read().splitlines()
  data = ",".join(data)
  template = template.replace("%" + delta.upper() + "D%", "[" + data + "]")
for jitter in jitters:
  with open(base + "." + jitter + "_jitter_report.csv") as f:
    data = f.read().splitlines()
  data = ",".join(data)
  template = template.replace("%" + jitter.upper() + "J%", "[" + data + "]")
f = open(base+".report.html", "w")
f.write(template)
f.close()
