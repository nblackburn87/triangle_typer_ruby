class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def type_checker
    sides = [@side_1, @side_2, @side_3]
    sides.sort!
    if sides[2] >= sides[1] + sides[0]
      "Not a Valid Triangle"
    elsif @side_1 == @side_2 && @side_2 == @side_3
      "Equilateral"
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
      "Isosceles"
    else
      "Scalene"
    end
  end
end
