ss = []
(1..20).inject( [0, 1] ) { | fib | ss << fib.inject(:+) }
print ss
