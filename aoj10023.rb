#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Mountain
  def initialize(cards)
    @cards = cards
  end

  def shuffle(pos)
    @cards += @cards.slice!(0,pos)
  end

  def display
    puts @cards.join
  end
end

mountains = Array.new

while input = gets
  input.chomp!
  break if input == "-"
  case input
  when /^[a-z]+/
    mountains.push Mountain.new(input.split(//))
  when /^[0-9]+/
    repeat_num = input.to_i
    repeat_num.times do
      h = gets.chomp.to_i
      mountains.last.shuffle(h)
    end
  end
end

mountains.each {|m| m.display}

