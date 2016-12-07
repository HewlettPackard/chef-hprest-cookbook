case node['platform']

#Installs hprest
when 'windows'
#do windows stuff
windows_package 'hprest' do
	action :install
	source	'http://ftp.hp.com/pub/softlib2/software1/pubsw-windows/p1440367746/v109762/hprest-1.5.0.0-94.x86_64.msi'
end

when 'debian', 'ubuntu'

file '/etc/apt/sources.list.d/hprest.list' do
	action :create
	content 'deb http://downloads.linux.hpe.com/SDR/repo/hprest trusty/current non-free'
end

apt_update 'apt-update' do
	action :update
end

apt_package 'hprest' do
	action :upgrade
	options "--force-yes"
end

when 'redhat', 'centos'

file 'hprest.repo' do
	action :create
	content '[hprest]
name=hpe restful interface tool
baseurl=http://downloads.linux.hpe.com/SDR/repo/hprest/rhel/7/x86_64/current
enabled=1
gpgcheck=0
gpgkey=https://downloads.linux.hpe.com/SDR/repo/hprest/GPG-KEY-hprest'
	path '/etc/yum.repos.d/hprest.repo'
end

yum_package 'hprest' do
	action :upgrade
end

end

#END CASE