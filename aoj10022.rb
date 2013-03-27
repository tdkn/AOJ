#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

count = 0
word = gets.chomp.downcase

while
  line = gets.chomp
  break if line == "END_OF_TEXT"
  count += line.downcase.split.count(word)
end

puts count

