package 'tree' do
	action :install 
end

package 'git'
package 'ntp' do
	action :install
end

file '/etc/motd' do
 content 'this file is the property of munmi'
 owner 'root'
 group 'root'
 mode '777'
end

service 'ntpd' do
	action [ :enable, :start ]
end




