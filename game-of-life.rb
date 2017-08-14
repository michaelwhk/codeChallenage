require_relative './func'
$LIFES = [
          [1,0,0,1],
          [0,1,0,0],
          [0,0,0,1],
          [1,1,1,0]
        ]
puts "How many column dow you want?"
n = gets.to_i

puts "How many row do you want?"
m = gets.to_i

matrix = initLife(m,n)
gameOfLife(matrix)
