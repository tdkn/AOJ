class Calculator
  def initialize
    @results = Array.new
  end

  def add_formula(formula)
    @a, @op, @b = formula.split
    @a, @b = @a.to_i, @b.to_i
    case @op
    when "+"
      @results.push @a + @b
    when "-"
      @results.push @a - @b
    when "*"
      @results.push @a * @b
    when "/"
      @results.push @a / @b
    end
  end

  def end_input?
    if @op == "?" then
      return true
    else
      return false
    end
  end

  def print_results
    @results.each do |result|
      puts result
    end
  end
end

calc = Calculator.new

while input = gets
  input.chomp!
  calc.add_formula(input)
  if calc.end_input? then
    calc.print_results
    break
  end
end
