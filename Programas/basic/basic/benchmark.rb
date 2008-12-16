require "benchmark"
include Benchmark

n = 1000000
bm(12) do |test|
  test.report("normal:")    do
    n.times do |x|
      y = x + 1
    end
  end
  test.report("predefine:") do
    x = y = 0
    n.times do |x|
      y = x + 1
    end
  end
end