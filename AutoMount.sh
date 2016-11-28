
# ! python
# mount all partition by neoedmund
from subprocess import Popen
from subprocess import PIPE

def getCol(col, line):
    p1 = line.find(col)
    if p1<0 : return ""
    p2 = p1 + len(col) + 1
    p3 = line.find('"',p2+1)
    return line[p2+1:p3]

data_stream = Popen(["/bin/lsblk", "-P", "-o", "FSTYPE,UUID,MOUNTPOINT,KNAME"], stdout=PIPE)
data=[]
for line in data_stream.stdout:
    fstype = getCol("FSTYPE", line)
    if fstype=="": continue # no fs
    mountpoint = getCol("MOUNTPOINT", line)
    if mountpoint!="":continue  # already mounted   
    uuid = getCol("UUID", line)
    kname = getCol("KNAME", line)
    data.append((kname, uuid))

print("### mount script ###")
for (kname,uuid) in data:
    print("mkdir /media/%s-%s"%(kname, uuid))
    print("mount /dev/%s /media/%s-%s" %(kname, kname, uuid))

print("### umount script ###")
for (kname,uuid) in data:
    print("umount /dev/%s" %(kname))





