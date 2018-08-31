package 'nano'
package 'vim-enhanced'
package 'tree' do
	action :install 
end

package 'git'
package 'ntp' do
	action :install
end

file '/etc/motd' do
 content "this file is the property of munmi
	Hostname = #{node['hostname']}
	ipAddress = #{node['ipaddress']}
	memory = #{node['memory']['total']}
	cpu = #{node['cpu']['0']['mhz']}"

 owner 'root'
 group 'root'
 mode '777'
end

service 'ntpd' do
	action [ :enable, :start ]
end




