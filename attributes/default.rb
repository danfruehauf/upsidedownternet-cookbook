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

# apache defaults for upsidedownternet
default['upsidedownternet']['apache_vhost']        = "127.0.0.1"
default['upsidedownternet']['apache_port']         = 80
default['upsidedownternet']['apache_docroot']      = "/var/www/upsidedownternet"

# transformation to use
default['upsidedownternet']['transformation']      = "flip"

# log file
default['upsidedownternet']['log_file']            = "#{node['squid']['log_dir']}/upsidedownternet.log"

# log file
default['upsidedownternet']['url_rewrite_program'] = "/usr/local/bin/upsidedownternet"
