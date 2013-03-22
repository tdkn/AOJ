#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Exam
  def initialize
    # middle final retest
    @score = {:m => 0, :f => 0, :r => 0}
  end

  def mf_total
    @score[:m] + @score[:f]
  end

  def absence?
    @score[:m] == -1 || @score[:f] == -1
  end

  def add_score(scores)
    @score[:m],@score[:f],@score[:r] = scores
  end

  def grade
    return "F" if absence? || mf_total < 30
    case mf_total
    when 80..100 then "A"
    when 65..80  then "B"
    when 50..65  then "C"
    when 30..65  then (@score[:r] >= 50) ? "C" : "D"
    end
  end
end

student_table = Array.new

while
  input = gets.chomp

  break if input == "-1 -1 -1"

  exam = Exam.new
  exam.add_score(input.split.map(&:to_i))
  student_table.push(exam)
end

puts student_table.map(&:grade)

