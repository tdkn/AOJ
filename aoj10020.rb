#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

count = Hash.new(0)

while input = gets
  input.chomp!
  alphabets = input.downcase.split(//)
  alphabets.reject!{|c| c !~ /[a-z]/}

  alphabets.each do |alphabet|
    count[alphabet] += 1
  end
end

[*"a".."z"].each do |alphabet|
  puts "#{alphabet} : #{count[alphabet]}"
end
