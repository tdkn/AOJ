ary = []
until (input = gets.split.map(&:to_i)) == [0, 0]
  ary.push(input)
end

ary.each do |data_set|
  puts data_set.sort.join(' ')
end
