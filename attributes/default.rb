#
# Two ways to define the configuration file
#

# Method #1
# default['sysctl']['conf_dir'] = '/home/vagrant'
# default['sysctl']['conf_file'] = 'sysctl.conf'

# Method #2
default['sysctl']['conffile'] = File.join(
  File::SEPARATOR, 'home', 'vagrant', 'sysctl.conf'
)

node.default['sysctl']['params']['net.core.rmem_max'] = '16777216'
node.default['sysctl']['params']['net.core.wmem_max'] = '16777216'
node.default['sysctl']['params']['net.core.rmem_node.default'] = '16777216'
node.default['sysctl']['params']['net.core.wmem_node.default'] = '16777216'
node.default['sysctl']['params']['net.ipv4.tcp_rmem'] = '10240 4194304 16777216'
node.default['sysctl']['params']['net.ipv4.tcp_wmem'] = '10240 4194304 16777216'
node.default['sysctl']['params']['net.ipv4.tcp_moderate_rcvbuf'] = '0'
node.default['sysctl']['params']['net.ipv4.tcp_window_scaling'] = '1'
node.default['sysctl']['params']['net.ipv4.tcp_tw_reuse'] = '1'
node.default['sysctl']['params']['net.ipv4.tcp_max_tw_buckets'] = '262144'
node.default['sysctl']['params']['net.ipv4.tcp_fin_timeout'] = '10'
node.default['sysctl']['params']['net.core.netdev_max_backlog'] = '30000'
node.default['sysctl']['params']['net.core.somaxconn'] = '16384'
node.default['sysctl']['params']['net.ipv4.tcp_max_syn_backlog'] = '16384'
node.default['sysctl']['params']['net.ipv4.ip_local_port_range'] = '1024 65535'
node.default['sysctl']['params']['net.ipv4.ip_local_reserved_ports'] = '14001,14011,14012,14070,1975,2181,4080,4080-4081,5019,5020-5021,6300-6500,8080,9898-9899'
node.default['sysctl']['params']['kernel.pid_max'] = '128000'
node.default['sysctl']['params']['vm.swappiness'] = '0'
node.default['sysctl']['params']['vm.min_free_kbytes'] = '300000'
node.default['sysctl']['params']['net.ipv4.tcp_no_metrics_save'] = '1'
node.default['sysctl']['params']['fs.file-max'] = '2418833'
node.default['sysctl']['params']['fs.aio-max-nr'] = '2418833'
