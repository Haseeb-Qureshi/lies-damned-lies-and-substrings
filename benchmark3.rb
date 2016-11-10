require 'benchmark'
NUM_TIMES = 100_000

str = 'abcde' * 2 ** 10
str2 = str * 2

Benchmark.bmbm do |bm|
  bm.report(str.length) do
    NUM_TIMES.times { str[1..-2] }
  end

  bm.report(str2.length) do
    NUM_TIMES.times { str2[1..-2] }
  end
end
