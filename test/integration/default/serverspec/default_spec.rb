require 'spec_helper'

describe file('/usr/local/sigil-0.4.0') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode '755' }
end

describe file('/usr/local/sigil') do
  it { should be_symlink }
  it { should be_linked_to '/usr/local/sigil-0.4.0' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/usr/local/sigil-0.4.0/sigil') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode '755' }
end

describe file('/usr/local/bin/sigil') do
  it { should be_symlink }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe command('/usr/local/bin/sigil -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /\d.\d.\d/ }
end