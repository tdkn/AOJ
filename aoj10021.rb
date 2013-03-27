#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

count = gets.chomp.to_i
english_words = Array.new

count.times do
  english_words.push(gets.chomp)
end

english_words.sort!
puts english_words[0]
