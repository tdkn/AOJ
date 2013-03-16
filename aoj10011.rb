#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

while (n = gets.to_i) != 0
  line = gets.chomp
  puts line.split.slice(0,n).reverse.join(' ')
end
