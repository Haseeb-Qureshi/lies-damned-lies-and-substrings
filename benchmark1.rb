require_relative 'substrings'
require 'benchmark'

str = 'abcdefgh' * 128
str2 = str * 2

benchmarks = Benchmark.bmbm do |bm|
  bm.report(str.length) do
    substrings(str)
  end

  bm.report(str2.length) do
    substrings(str2)
  end
end

puts benchmarks.reduce { |m1, m2| m2.real / m1.real }
