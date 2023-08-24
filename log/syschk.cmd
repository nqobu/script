# #####################################################################	#
#
#  DESCRIPTION
#     For system check
#
#  AUTHOR
#     Zhoujin Wu (Z)	< zhoujin.wu AT gmail DOT com >
#
# #####################################################################	#

  Today						: date
						: date -u

  How long the system has been running?		: uptime
						: uptime -p
#						: who -b
						: uptime -s
						: who -r

  I am...					: whoami
  Who is logged on now				: who -q
						: who -Hu

  Show listing of last logged in users		: last

# #############################################	#

  Operating System				: uname -a
						: cat /proc/version
						: lsb_release -a
						: cat /etc/*-release

# #############################################	#

# Refresh the the PCI ID list			: sudo update-pciids
# List all PCI devices				: lspci -v

# #############################################	#

  The number of processing units		: nproc
  CPU architecture information			: lscpu
# Show info about CPU architecture		: cat /proc/cpuinfo

# #############################################	#

  Display amount of free/used memory		: free -m
  Display memory statistics			: vmstat -s
  Show memory usage				: cat /proc/meminfo
# Dump computer's DMI				: sudo dmidecode --type memory

# #############################################	#

  The block devices that has been used		: ls -l /sys/block | fgrep block/sd | wc -l
  Show the vendor info of each physical disks	: lsblk -S
  Show the volumn size of each physical disks	: lsblk -d
# Show physical disks				: cat /proc/scsi/scsi
  List disk partition				: cat /proc/partitions
  Usage of each partition			: df -ha
# List all block devices			: lsblk -io KNAME,TYPE,SIZE,MODEL,VENDOR
#						: sudo lshw -class disk
#						: sudo fdisk -l
#						: sudo parted --list

# #############################################	#

  Show list of NICs				: lspci | egrep -i 'network|ethernet'
  Show status of NICs				: netstat -nr
						: netstat -i
						: cat /proc/net/dev
						: ip link show
  List configuration of NICs			: ip -4 -o addr | awk '/inet /{print "IP (" $2 "):\t" $4}'
#						: ip a
#						: ifconfig -a
						: ip -4 address show
#						: sudo lshw -class network

  Gateway					: route -n | awk '/^0.0.0.0/{print $2}' 
  Name Server(s)				: cat /etc/resolv.conf | awk '/^nameserver/{print $2}'

# #############################################	#

  List graphics cards				: lspci | fgrep -i vga
#						: sudo lshw -short | grep -i display

  Get information about GFX cards		: lspci | fgrep -i vga | cut -d ' ' -f 1 | while read x; do lspci -v -s $x; done
#						: sudo lshw -class display

  Get more detailed information about GFX cards	: nvidia-smi
#						: nvidia-smi -q

# #############################################	#

# Find files with setuid permissions		: find / -user root -perm -4000 -exec ls -ldb {} \;
# Find empty directory				: find / -type d -empty -print
# Delete empty directory			:#find . -type d -empty -delete
