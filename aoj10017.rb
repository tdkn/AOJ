#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

while input = gets
  n,x = input.chomp.split.map{|i| i.to_i}

  break if [n,x].all?{|n| n == 0}
  break if n < 3 || 100 < n

  count = 0
  (1..n).each do |i|
    ((i+1)..n).each do |j|
      ((j+1)..n).each do |k|
        count += 1 if (i+j+k) == x
      end
    end
  end

  puts count
end
