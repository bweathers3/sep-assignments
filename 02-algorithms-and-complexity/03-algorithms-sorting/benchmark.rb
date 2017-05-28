require 'benchmark'

require_relative 'bubble_sort'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'quick_sort'
require_relative 'quick_sort_recursive'
require_relative 'selection_sort'

  test_array = []

  for i in 1..50 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  puts
  puts

  Benchmark.bm(38) do |bubble_sort|
    sort_array = test_array
    bubble_sort.report("Testing a Bubble Sort") do
      bubble_sort(sort_array)
    end
  end

  Benchmark.bm(38) do |bucket_sort|
    sort_array = test_array
    bucket_sort.report("Testing a Bucket Sort") do
      bucket_sort(sort_array)
    end
  end

  Benchmark.bm(38) do |heap_sort|
    sort_array = test_array
    heap_sort.report("Testing a Heap Sort") do
      heap_sort(sort_array)
    end
  end

  Benchmark.bm(38) do |insertion_sort|
    sort_array = test_array
    insertion_sort.report("Testing a Insertion Sort") do
      insertion_sort(sort_array)
    end
  end

  Benchmark.bm(38) do |merge_sort|
    sort_array = test_array
    merge_sort.report("Testing a Merge Sort") do
      merge_sort(sort_array)
    end
  end

  Benchmark.bm(38) do |quick_sort|
    sort_array = test_array
    quick_sort.report("Testing a Quick Sort") do
      quick_sort(sort_array)
    end
  end

  Benchmark.bm(38) do |quick_sort_recursive|
    sort_array = test_array
    quick_sort_recursive.report("Testing a Quick Sort Recursive") do
      quick_sort_recursive(sort_array)
    end
  end

  Benchmark.bm(38) do |selection_sort|
    sort_array = test_array
    selection_sort.report("Testing a Selection Sort") do
      selection_sort(sort_array)
    end
  end

  puts
  puts
