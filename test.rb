require 'benchmark'
require_relative 'code.rb'

first = 'aBa' * 100
second = 'aBa' * 1000
third = 'aBa' * 10000
fourth = 'aBa' * 100000
Benchmark.bm do |x|
  x.report { palindrome?(first) }
  x.report { palindrome?(second) }
  x.report { palindrome?(third) }
  x.report { palindrome?(fourth) }
end
