node.default['sigil']['version'] = '0.4.0'
node.default['sigil']['url_base'] = "https://github.com/gliderlabs/sigil/releases/download/v#{node['sigil']['version']}"
node.default['sigil']['arch'] = kernel['machine']

node.default['sigil']['0.4.0']['raw_checksums'] = <<-EOF
    2b8b2768515a3a4d8ff7f615a03210fe523fc12733cc64548e757625b6f9bd4a  sigil_0.4.0_Darwin_x86_64.tgz
    c503bc15fba88d08fe7ba350fc02e61c4757d13f349f56cf5b7977f8139d5843  sigil_0.4.0_Linux_x86_64.tgz
EOF

node.default['sigil']['checksums'] = Hash[
    node['sigil'][node['sigil']['version']]['raw_checksums'].split("\n").collect { |s| s.split.reverse }
]
filename = "sigil_#{node['sigil']['version']}_#{node['kernel']['name']}_#{node['sigil']['arch']}.tgz"
node.default['sigil']['dist_filename'] = filename
node.default['sigil']['checksum'] = node['sigil']['checksums'][filename]

