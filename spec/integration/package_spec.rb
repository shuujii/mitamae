__END__

require 'spec_helper'

describe 'package resource' do
  before(:all) do
    run_command('apt-get', 'update')
    apply_recipe('package')
  end

  describe package('dstat') do
    it { should be_installed }
  end

  describe package('sl') do
    it { should be_installed }
  end

  describe package('resolvconf') do
    it { should_not be_installed }
  end
end
