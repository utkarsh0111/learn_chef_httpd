#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'apache2'

service 'apache2' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end
