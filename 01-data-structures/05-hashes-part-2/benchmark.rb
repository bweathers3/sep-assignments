require 'benchmark'

require_relative 'open_addressing/open_addressing'
require_relative 'separate_chaining/separate_chaining'

n = 10000
test_open_address_data = OpenAddressing.new(6)
test_separate_chaining_data = SeparateChaining.new(6)

Benchmark.bm(35) do |open_addressing_adding|
  open_addressing_adding.report("test adding values to open_addressing") do
    (1..n).each do |i|
      ascii_code = rand(255)
      random_char_value = ascii_code.chr + "  test value"
      random_char_key = ascii_code.chr + "  test key"
      test_open_address_data[ random_char_key] = random_char_value
    end
  end
end

Benchmark.bm(35) do |separate_chaining_adding|
    separate_chaining_adding.report("test adding values to separate_chaining") do
      (1..n).each do |i|
        ascii_code = rand(255)
        random_char_value = ascii_code.chr + "test value"
        random_char_key = ascii_code.chr + "test key"
        test_separate_chaining_data[ random_char_key] = random_char_value
      end
    end
end
