require 'active_record'
require 'benchmark/ips'

ActiveRecord::Base.logger = nil
ActiveRecord::Base.establish_connection(
  adapter:  'postgres',
  database: 'postgres'
)

Whatever = Class.new(ActiveRecord::Base)

Benchmark.ips do |bench|
  bench.report('SQL query')      do
    Whatever.create(text: 'meh')
  end

  bench.report('exception hit') do
    raise StandardError.new rescue nil
  end

  bench.report('exception miss') do
    raise StandardError.new if false
  end

  bench.compare!
end
