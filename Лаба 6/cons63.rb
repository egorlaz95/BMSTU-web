require_relative 'main63.rb'
xd1 = ->(x1) { Math.exp(x1) / (x1 + 1) }
a1 = 0
b1 = 1
xd2 = ->(x2) { x2 * (x2 - 1) }
a2 = 0
b2 = 2
puts 'Введите количество отрезков, на которые следует разбить наши прямоугольники: '
n = gets.to_i
puts(Intprg(a1, b1, a2, b2, xd2, n, &xd1))
