require './lib/triangles'

def new_triangle
  puts "What is the length of the first side?: "
  side_1 = gets.chomp.to_i
  puts "What is the length of the second side?: "
  side_2 = gets.chomp.to_i
  puts "What is the length of the third side?: "
  side_3 = gets.chomp.to_i

  triangle = Triangle.new(side_1, side_2, side_3)
  puts "Your triangle is #{triangle.type_checker}!!!"
end

new_triangle
