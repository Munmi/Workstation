package 'nano'
package 'vim-enhanced'
package 'tree' do
	action :install 
end

package 'git'
package 'ntp' do
	action :install
end

template '/etc/motd' do
	source 'motd.erb'
	variables(
		:name => 'Munmi'
	)
	action :create
end

service 'ntpd' do
	action [ :enable, :start ]
end




