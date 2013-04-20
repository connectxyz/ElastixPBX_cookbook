
default['elastix']['pbx']['iso'] = 'http://downloads.sourceforge.net/project/elastix/Elastix%20PBX%20Appliance%20Software/2.4.0/Elastix-2.4.0-Stable-x86_64-bin-04feb2013.iso?r=http%3A%2F%2Fwww.elastix.org%2Findex.php%2Fen%2Fdownloads.html&ts=1366487763&use_mirror=superb-dca3'
default['elastix']['pbx']['server_name'] = 'elastix'

default['elastix']['epel_extensions_rpm'] = 'http://mirror.chpc.utah.edu/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm'

default['elastix']['iptables']['allowed_networks'] = 'this should be a list of networks allowed to connect to services on this server'
default['elastix']['iptables']['private_network'] = '192.168.3.0/24'

default['elastix']['drbd']['enable'] = 'no'
default['elastix']['drbd']['device'] = '/dev/xvdb'
default['elastix']['drbd']['master'] = true
