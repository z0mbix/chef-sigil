#
# Cookbook Name:: sigil
# Recipe:: default
#
# Copyright (C) 2016 David Wooldridge
#

# Install packages necessary for extracting sigil
include_recipe "ark"

ark 'sigil' do
    url "#{node['sigil']['url_base']}/#{node['sigil']['dist_filename']}"
    version node['sigil']['version']
    checksum node['sigil']['checksum']
    has_binaries ['sigil']
    append_env_path false
    strip_components 0

    action :install
end
