remote_file "#{Chef::Config[:file_cache_path]}/elastix.iso" do
  source node['elastix']['pbx']['iso']
end

remote_file "#{Chef::Config[:file_cache_path]}/epel.rpm" do
  source node['elastix']['pbx']['epel_extensions_rpm']
end

rpm_package "#{Chef::Config[:file_cache_path]}/epel.rpm" do
  action :install
end

mount "/mnt/elastix-iso" do
  device "#{Chef::Config[:file_cache_path]}/elastix.iso"
  action [:mount, :enable]
  fstype "iso9660"
  options "loop"
end

directory '/mnt/elastix-iso' do
  owner 'root'
  group 'root'
end

execute "yum-update" do
  command "yum -y update"
  action :run
end

cookbook_file '/etc/yum.repos.d/elastix-cd.repo' do
  source 'yumrepo'
  mode 00644
end

yum_package "elastix" do
  action :install
end