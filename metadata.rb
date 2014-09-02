name 'sysctl'
maintainer 'rameshshihora'
maintainer_email 'rameshshihora@gmail.com'
license 'All rights reserved'
description 'Installs/Configures sysctl'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.1'

%w(debian fedora redhat centos ubuntu).each do |systems|
  supports systems
end

# attribute 'sysctl/conffile',
#          display_name: 'ConfigFile',
#          description: 'The name and path of the file',
#          type: 'string',
#          required: 'required',
#          recipes:  ['sysctl::default'],
#          default:  'sysctl.conf'
