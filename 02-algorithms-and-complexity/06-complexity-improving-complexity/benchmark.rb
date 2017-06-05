require 'benchmark'

require_relative 'master'
require_relative 'improving_complexity_version_one_code_optimizations'
require_relative 'improving_complexity_version_two_time_complexity_performance'
require_relative 'improving_complexity_version_three_space_complexity'


  test_array = []
  test_array_2 = []
  test_array_3 = []

  for i in 1..1000 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  for i in 1..1000 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array_2 << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  for i in 1..1000 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array_3 << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  puts
  puts
  puts "With single Array input"
  puts

  Benchmark.bm(38) do |master|
    master.report("Testing Original Code") do
      poorly_written_ruby(test_array)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_one_code_optimizations|
    improving_complexity_version_one_code_optimizations.report("Testing Code Optimizations") do
      better_written_ruby(test_array)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_two_time_complexity_performance|
    improving_complexity_version_two_time_complexity_performance.report("Testing Improved Time Complexity") do
      still_better_written_ruby(test_array)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_three_space_complexity|
    improving_complexity_version_three_space_complexity.report("Testing Improved Space Complexity") do
      best_written_ruby(test_array)
    end
  end

  puts
  puts
  puts
  puts "With Three Array Input"
  puts

  Benchmark.bm(38) do |master|
    master.report("Testing Original Code") do
      poorly_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_one_code_optimizations|
    improving_complexity_version_one_code_optimizations.report("Testing Code Optimizations") do
      better_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_two_time_complexity_performance|
    improving_complexity_version_two_time_complexity_performance.report("Testing Improved Time Complexity") do
      still_better_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_three_space_complexity|
    improving_complexity_version_three_space_complexity.report("Testing Improved Space Complexity") do
      best_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  puts
  puts

  test_array = []
  test_array_2 = []
  test_array_3 = []

  for i in 1..10000 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  for i in 1..10000 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array_2 << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  for i in 1..10000 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array_3 << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  puts
  puts "With Three Array Input with 10000 in each array"
  puts

  Benchmark.bm(38) do |master|
    master.report("Testing Original Code") do
      poorly_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_one_code_optimizations|
    improving_complexity_version_one_code_optimizations.report("Testing Code Optimizations") do
      better_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_two_time_complexity_performance|
    improving_complexity_version_two_time_complexity_performance.report("Testing Improved Time Complexity") do
      still_better_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  Benchmark.bm(38) do |improving_complexity_version_three_space_complexity|
    improving_complexity_version_three_space_complexity.report("Testing Improved Space Complexity") do
      best_written_ruby(test_array, test_array_2, test_array_3)
    end
  end

  puts
  puts
