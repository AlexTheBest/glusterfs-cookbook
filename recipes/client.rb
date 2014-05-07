#
# Cookbook Name:: glusterfs
# Recipe:: default
#
# Copyright 2014, Hiroki Endo
#

include_recipe "glusterfs::add_repo"

package "glusterfs-client"

