#
# Cookbook Name:: MyApp_mysqldb
# Recipe:: default
#
# Copyright (C) 2015 Dimos Karagiannis
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mysql::client'
include_recipe 'mysql::server'
include_recipe 'database::mysql'

mysql_connection_info = {
    :host => 'localhost',
    :username => 'root',
    :password => node['mysql']['server_root_password']
}

mysql_database 'MyAppDB' do
  connection mysql_connection_info
  action :create
end

