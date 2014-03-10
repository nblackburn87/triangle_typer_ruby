require 'rspec'
require 'triangles'

describe 'Triangle' do
  it 'initializes a triangle object with three sides' do
    test_triangle = Triangle.new(3, 3, 3)
    test_triangle.should be_an_instance_of Triangle
  end

  it 'outputs equilateral if all three sides are the same' do
    test_triangle = Triangle.new(3, 3, 3)
    test_triangle.type_checker.should eq "Equilateral"
  end

  it 'outputs isosceles if only two sides are equal' do
    test_triangle = Triangle.new(4, 4, 6)
    test_triangle.type_checker.should eq "Isosceles"
  end

  it 'outputs invalid if the sides do not make a valid triangle' do
    test_triangle = Triangle.new(4, 3, 18)
    test_triangle.type_checker.should eq "Not a Valid Triangle"
  end

  it 'outputs scalene if none of the sides are equal but they make a valid triangle' do
    test_triangle = Triangle.new(3, 4, 5)
    test_triangle.type_checker.should eq "Scalene"
  end
end
