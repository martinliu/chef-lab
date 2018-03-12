#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h1>Hello, world!</h1>
    <h2> Ipaddress: #{ node['ipaddress'] } </h2>
    <h2> Hostname: #{ node['hostname'] } </h2>
    "
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end
