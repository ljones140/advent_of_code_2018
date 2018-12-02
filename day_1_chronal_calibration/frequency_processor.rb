frequencies = File.readlines("#{File.dirname(__FILE__)}/input.txt").map(&:to_i)


# sum of input
p frequencies.reduce(0, &:+)

# first frequency reached twice
require 'set'
require 'benchmark'

# Set feels more idiomatic but is slower
using_set = Benchmark.measure do
  current_total = 0

  reached_once = Set.new
  frequencies.cycle do |freq|
    current_total += freq
    break p  "frequency twice: #{current_total}" if reached_once.include?(current_total)
    reached_once.add(current_total)
  end
end
p using_set


# Using Hash is more performant, however it feels weird making a key value pair
# for performance optimisation only
using_hash = Benchmark.measure do
  current_total = 0
  reached_once = {}

  frequencies.cycle do |freq|
    current_total += freq
    break p "frequency twice: #{current_total}" if reached_once[current_total]
    reached_once[current_total] = current_total
  end
end

p using_hash
