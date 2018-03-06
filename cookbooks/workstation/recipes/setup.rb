package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end



file '/etc/motd' do
  content "This server is the property of Chef
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']}
  "
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
