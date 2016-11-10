def substrings(str)
  (0...str.length).each_with_object([]) do |i, subs|
    (i...str.length).each do |j|
      subs << str[i..j]
    end
  end
end

puts substrings("Hello")
