require 'spec_helper'

describe 'MyApp_mysqldb::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
 it 'mysql service should be enabled and running' do
 	expect(service(mysql)).to be_enabled
 	expect(service(mysql)).to be_running
 end

 it 'mysql is listening on port 3306' do
    expect(port(3306)).to be_listening
  end


end