#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

array = Array.new

while input = gets
  n = input.chomp

  break if n == "0" || 1000 < n.size

  total = 0
  n.each_char do |i|
    total += i.to_i
  end

  array.push(total)
end

puts array
