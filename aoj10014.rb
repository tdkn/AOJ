#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Rectangle
  def initialize(height,width)
    @h = height
    @w = width
  end
  def print_rect
    @h.times do |i|
      @w.times do |j|
        if (i%2==0) then
          print j%2==0 ? "#" : "."
        else
          print j%2==0 ? "." : "#"
        end
      end
      print "\n"
    end
    print "\n"
  end
end

rectangles = Array.new

while line = gets
  line.chomp!
  break if line.split.size != 2
  h,w = line.split.map! {|n| n.to_i }
  if [h,w] == [0,0] then
    rectangles.each do |rectangle|
      rectangle.print_rect
    end
    break
  end
  rectangles.push Rectangle.new(h,w)
end

