#
# Cookbook Name:: sysctl
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Method #1 to call from Attributes
# conf_file = ::File.join(node['sysctl']['conf_dir'], node['sysctl']['conf_file'])

# Method #2 to call from Attributes
conf_file = node['sysctl']['conffile']

execute 'Refresh Sysctl' do
  command "sysctl -p #{conf_file}"
  only_if { File.exist?("#{conf_file}") }  # Guard in case file doesnt get created which unlikely though since template will fail :)
  action :nothing
  returns [0, 255]
end

template conf_file do
  source 'sysctl.conf.erb'
  cookbook 'sysctl'
  owner 'root'
  group 'root'
  mode '0644'
  variables params: node['sysctl']['params']
  notifies :run, 'execute[Refresh Sysctl]', :immediately
end
