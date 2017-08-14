require_relative './func'

puts "Input a number you want to power with "
x = gets.chomp.to_f
puts "how many power times do you want"
n = gets.chomp.to_f

puts mypow(x,n)
