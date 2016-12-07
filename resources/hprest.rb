#Custom resource for hprest commands
resource_name :hprest
property :command, kind_of: String, name_property: true

case node['platform']

when 'windows'
#Windows PATH is not set upon installaton, using CWD
action :run do
	execute "#{command}" do
		command "hprest #{command}"
		live_stream true
		cwd "C:/Program Files/Hewlett Packard Enterprise/HPE RESTful Interface Tool"
		ignore_failure true
	end
end

when 'debian','centos','redhat','ubuntu'

action :run do
	execute "#{command}" do
		command "hprest #{command}"
		live_stream true
		ignore_failure true
	end
end
#End Case
end