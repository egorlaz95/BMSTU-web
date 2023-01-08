require_relative 'main53.rb'
st = []
puts "Введите последовательность строк, которая будет заканчиваться словом 'end'"
loop do
  a = gets
  myArray = a.split
  st.push(myArray.join(' '))
  break if st[-1] == 'end'
end
st.delete_at(-1)
fr = Laba53(st)
puts 'Исходная последовательность строк: ', fr[0]
puts 'Скоректрированная последовательность строк: ', fr[1]
