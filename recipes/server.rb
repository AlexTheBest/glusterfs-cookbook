#
# Cookbook Name:: glusterfs
# Recipe:: server
#
# Copyright 2014, Hiroki Endo
#

include_recipe "glusterfs::add_repo"

package "glusterfs-server"

service "glusterfs-server" do
  action [:enable, :start]
end

include_recipe "glusterfs::filesystem"

