#
# Cookbook Name:: glusterfs
# Recipe:: default
#
# Copyright 2014, Hiroki Endo
#

include_recipe "apt" if platform?("ubuntu", "debian")

apt_repository "gluster" do
  uri "https://launchpad.net/~semiosis/+archive/ubuntu-glusterfs-3.5"
  distribution node['lsb']['codenme']
  components ["main"]
  key "774BAC4D"
  keyserver "keyserver.ubuntu.com"
  action :add
  notifies :run, "execute[apt-get update]", :immediately
end

package "glusterfs-client"

