#
# Cookbook Name:: glusterfs
# Recipe:: filesystem
#

gfs = node['glusterfs']

package "xfsprogs"

mount gfs['mount'] do
  action :umount
  device gfs['device']
end

execute 'mkfs' do
  command "mkfs -t xfs -f " + gfs[:device]
  not_if "grep -qs " + gfs[:mount] + " /proc/mounts"
end

mount gfs['mount'] do
  device gfs['device']
  fstype "xfs"
  options "rw"
  action [:mount, :enable]
end

directory gfs['brick_dir'] do
  owner "root"
  group "root"
  mode 00666
  action :create
end

