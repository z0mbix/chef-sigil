#
# Cookbook Name:: sigil
# Spec:: default
#
# Copyright (c) 2016 z0mbix, All Rights Reserved.

# TODO: No tests yet as need to figure out how to test the ark resource

require 'spec_helper'

describe 'sigil::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new() do |node|
      end.converge(described_recipe)
    end
  end
end
