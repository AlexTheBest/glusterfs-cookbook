name             'glusterfs'
maintainer       'Hiroki Endo'
maintainer_email 'endhrk@gmail.com'
license          'MIT'
description      'Installs/Configures glusterfs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "glusterfs::client", "Installation client"
recipe "glusterfs::server", "Installation server"

%w{ yum apt glusterfs-server glusterfs-client }.each do |dep|
  depends dep
end

%w{ ubuntu }.each do |os|
  supports os
end

