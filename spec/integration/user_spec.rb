__END__

require 'spec_helper'

describe 'user resource' do
  before(:all) do
    apply_recipe('user')
  end

  describe user('itamae') do
    it { should exist }
    it { should have_uid 1234 }
    it { should have_home_directory '/home/itamae' }
    it { should have_login_shell '/bin/dash' }
  end

  describe file('/home/itamae2') do
    it { should be_directory }
    it { should be_owned_by 'itamae2' }
    it { should be_grouped_into 'itamae2' }
  end
end
