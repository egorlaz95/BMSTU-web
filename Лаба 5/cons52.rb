require_relative 'main52.rb'
puts 'Введите число: '
x = gets.chomp.to_i
g = Laba52(x)
puts 'Количество нечётных цифр: ', g[0]
puts 'Количество чётных цифр: ', g[1]
