#{"development"=>{"adapter"=>"mysql2", "host"=>"localhost", "database"=>"dev1", "password"=>"root", "username"=>"root", "encoding"=>"utf8"}, "test"=>{"adapter"=>"mysql2", "host"=>"localhost", "database"=>"dev1_test", "password"=>"root", "username"=>"root", "encoding"=>"utf8"}}""
require 'yaml'
array_of_hashes = {"development"=>{"adapter"=>"mysql2", "host"=>"localhost", "database"=>"dev1", "password"=>"root", "username"=>"root", "encoding"=>"utf8"}}

File.open("my_new.yml","w") do |file|
  file.write array_of_hashes.to_yaml
end
