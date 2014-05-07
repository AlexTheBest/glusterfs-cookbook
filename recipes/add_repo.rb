#
# Cookbook Name:: glusterfs
# Recipe:: add_repo
#
# Copyright 2014, Hiroki Endo
#

include_recipe "apt" if platform?("ubuntu", "debian")

apt_repository "gluster" do
  uri " http://ppa.launchpad.net/semiosis/ubuntu-glusterfs-3.5/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  key "774BAC4D"
  keyserver "keyserver.ubuntu.com"
  action :add
end
