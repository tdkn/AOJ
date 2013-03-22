#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Test
  def initialize
    # middle final retest
    @score = {:m => 0, :f => 0, :r => 0}
    @grade = "X"
  end

  attr_accessor :score, :grade

  def add_score(scores)
    @score[:m] = scores[0].to_i
    @score[:f] = scores[1].to_i
    @score[:r] = scores[2].to_i
    @grade = judge_grade
  end

  private
  def judge_grade
    score_mf = @score[:m] + @score[:f]
    if (score_mf >= 80) then
      return "A"
    elsif (65 <= score_mf && score_mf < 80) then
      return "B"
    elsif (50 <= score_mf && score_mf < 65) then
      return "C"
    elsif (30 <= score_mf && score_mf < 50 && @score[:m] != -1 && @score[:f] != -1) then
      return "C" if @score[:r] >= 50
      return "D"
    elsif (score_mf < 30 || @score[:m] == -1 || @score[:f] == -1) then
      return "F"
    end
  end
end

score_table = Array.new

while
  input = gets.chomp

  break if input == "-1 -1 -1"

  result = Test.new
  result.add_score(input.split)
  score_table.push(result)
end

score_table.each do |item|
  puts item.grade
end

