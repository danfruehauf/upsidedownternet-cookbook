#
# Cookbook Name:: upsidedownternet
# Recipe:: squid
#
# Copyright (C) 2014 Dan Fruehauf <malkodan@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

directory node['upsidedownternet']['apache_docroot'] do
  user  node['apache']['user']
  group node['apache']['group']
  # 777 to allow also squid to write there
  mode  00777
end

web_app "upsidedownternet" do
  template    "upsidedownternet-vhost.conf.erb"
  server_name node['upsidedownternet']['apache_vhost']
  server_port node['upsidedownternet']['apache_port']
  docroot     node['upsidedownternet']['apache_docroot']
end
