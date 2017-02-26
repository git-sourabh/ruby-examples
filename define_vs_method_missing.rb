require 'benchmark'

iterations = 100_000

Benchmark.bm do |bm|
  bm.report('define_method') do
    class NullOrder

      ['usd', 'euro', 'yen'].each do |method|
       define_method "price_#{method}".to_sym do
         0.0
       end
      end

    end
    iterations.times do
      o = NullOrder.new
      o.price_euro
      o.price_usd
    end
  end

  bm.report('method_missing') do

    class NullOrder2
      def method_missing(m, *args, &block)
        m.to_s =~ /price_/ ? 0.0 : super
      end
    end

    iterations.times do
      o2 = NullOrder2.new
      o2.price_euro
      o2.price_usd
    end
  end
end
