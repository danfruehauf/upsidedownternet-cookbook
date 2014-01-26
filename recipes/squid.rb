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

include_recipe "squid"

template node['upsidedownternet']['url_rewrite_program'] do
  source   "upsidedownternet.sh.erb"
  mode     00755
  #notifies :restart, 'service[#{node['squid']['service_name']}]', :immediately
end

# Override the original cookbook with our new template
begin
  r = resources(:template => node['squid']['config_file'])
  r.cookbook "upsidedownternet"
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "upsidedownternet::squid could not find template to override!"
end
