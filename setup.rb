package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end



file '/etc/motd' do
  content 'This Server is the property of DevOps Lab'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

