#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Checker
  def initialize
    @spades = Array.new(13, false);
    @hearts = Array.new(13, false);
    @clubs = Array.new(13, false);
    @diamonds = Array.new(13, false);
  end

  def add_card(pattern, lank)
    lank = lank.to_i
    case pattern
    when "S" then
      @spades[lank-1] = true
    when "H" then
      @hearts[lank-1] = true
    when "C" then
      @clubs[lank-1] = true
    when "D" then
      @diamonds[lank-1] = true
    end
  end

  def print_missing_cards
    @spades.each_index do |i|
      puts "S #{i+1}" if @spades[i] == false
    end
    @hearts.each_index do |i|
      puts "H #{i+1}" if @hearts[i] == false
    end
    @clubs.each_index do |i|
      puts "C #{i+1}" if @clubs[i] == false
    end
    @diamonds.each_index do |i|
      puts "D #{i+1}" if @diamonds[i] == false
    end
  end
end

card_checker = Checker.new

n = gets.chomp.to_i

n.times do
  pattern,lank = gets.chomp.split
  card_checker.add_card(pattern, lank)
end

card_checker.print_missing_cards

