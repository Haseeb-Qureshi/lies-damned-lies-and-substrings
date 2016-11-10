require_relative 'substrings'

def average_substring_ratio(original_string_length)
  str = 'a' * original_string_length
  substring_lengths = substrings(str).map(&:length)
  average_substring_length = substring_lengths.reduce(:+)
                                              .fdiv(substring_lengths.count)

  average_substring_length / original_string_length
end

(1..150).step(5).each do |count|
  puts "#{count}: #{average_substring_ratio(count)}"
end
