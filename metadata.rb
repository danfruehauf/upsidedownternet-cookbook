name             'upsidedownternet'
maintainer       'Dan Fruehauf'
maintainer_email 'malkodan@gmail.com'
license          'GPLv2'
description      'Installs/Configures upsidedownternet (http://www.ex-parrot.com/~pete/upside-down-ternet.html)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ squid apache2 }.each do |cb|
  depends cb
end
