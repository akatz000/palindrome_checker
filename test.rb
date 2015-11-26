require 'benchmark'
require_relative 'code.rb'

first = 'a' * 10000
second = 'a' * 100000
third = 'a' * 1000000
fourth = 'a' * 10000000
Benchmark.bm do |x|
  x.report ("n = 10,000     :") { palindrome?(first) }
  x.report ("n = 100,000    :") { palindrome?(second) }
  x.report ("n = 1,000,000  :") { palindrome?(third) }
  x.report ("n = 10,000,000 :") { palindrome?(fourth) }
end
