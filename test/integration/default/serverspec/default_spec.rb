require 'spec_helper'

describe 'MyApp_mysqldb::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
 it 'mysql is listening on port 3306' do
    expect(port(3306)).to be_listening
  end

 describe service('mysql') do
 	it { should be_enabled }
 	it { should be_running }
 end

end