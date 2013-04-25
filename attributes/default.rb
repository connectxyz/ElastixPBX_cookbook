
default['elastix']['pbx']['iso'] = 'http://downloads.sourceforge.net/project/elastix/Elastix%20PBX%20Appliance%20Software/2.4.0/Elastix-2.4.0-Stable-x86_64-bin-04feb2013.iso?r=http%3A%2F%2Fwww.elastix.org%2Findex.php%2Fen%2Fdownloads.html&ts=1366487763&use_mirror=superb-dca3'
default['elastix']['pbx']['server_name'] = 'elastix'

#these should probably default to this
default['elastix']['pbx']['disable_selinux'] = true
default['elastix']['pbx']['disable_auto_yum_updates'] = true #yum auto will break things.


default['elastix']['epel_extensions_rpm'] = 'http://mirror.chpc.utah.edu/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm'

default['elastix']['iptables']['allowed_wan_networks'] = ['50.125.113.138']
default['elastix']['iptables']['wan_interface'] = 'eth0'
default['elastix']['iptables']['lan_interface'] = 'eth1'
default['elastix']['iptables']['lan_network'] = '192.168.3.0/24'
default['elastix']['high_availability']['enable'] = 'no'
default['elastix']['drbd']['raw_device'] = '/dev/xvdb'
default['elastix']['drbd']['virt_device'] = '/dev/drbd0'
default['elastix']['drbd']['master'] = '192.168.3.1'
default['elastix']['drbd']['slave'] = '192.168.3.2'
default['elastix']['drbd']['shared_secret'] = 'y0m0mma'

