__END__

require 'spec_helper'

describe 'definition' do
  before(:all) do
    apply_recipe('define')
  end

  describe file('/tmp/created_by_definition') do
    it { should be_file }
    its(:content) { should eq("key:value,message:Hello, Itamae\n") }
  end

  describe file('/tmp/not_created_by_definition') do
    it { should_not exist }
  end

  describe file('/tmp/only_created_by_definition') do
    it { should_not exist }
  end

  describe file('/tmp/remote_file_in_definition') do
    it { should be_file }
    its(:content) { should eq("definition_example\n") }
  end

  describe file('/tmp/nested_params') do
    it { should be_file }
    its(:content) { should eq("true\n") }
  end

  describe file('/tmp/append') do
    it { should be_file }
    its(:content) { should eq("foobar") }
  end
end
