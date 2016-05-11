name             'sigil'
maintainer       'David Wooldridge'
maintainer_email 'zombie@zombix.org'
license          'MIT'
description      'Installs sigil'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'ark', '~> 0.9.0'

%w(mac_os_x ubuntu debian centos redhat amazon fedora).each do |os|
  supports os
end