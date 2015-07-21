#
# Cookbook Name:: guacamole
# Recipe:: default
#
# Copyright (c) 2015 Matt Stratton, Licensed under the Apache License, Version 2.0

# Install package dependencies

# Core dependencies

%w[gcc gcc-c++ cairo-devel libpng-devel uuid-devel].each do |package|
  package package do
    action :install
  end
end

remote_file "#{Chef::Config[:file_cache_path]}/guacamole-server-#{node['guacamole']['version']}.tar.gz" do
  source "http://tcpdiag.dl.sourceforge.net/project/guacamole/current/source/guacamole-server-#{node['guacamole']['version']}.tar.gz"
  mode '0644'
end

# bash "build-and-install-guacamole" do
#   cwd Chef::Config[:file_cache_path]
#   code <<-EOF
#     tar -xzf guacamole-server-#{node['guacamole']['version']}.tar.gz
#     (cd guacamole-server-#{node['guacamole']['version']} && ./configure --with-init-dir=/etc/init.d)
#     (cd guacamole-server-#{node['guacamole']['version']} && make && make install)
#   EOF
# end
