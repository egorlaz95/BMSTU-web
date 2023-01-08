def Laba62(eps)
  list = Enumerator.new do |yielder|
    sum = 0.0
    prev = 1.0
    counter = 1.0
    loop do
      yielder.yield sum, prev
      prev = sum
      sum += 1.0 / (counter * (counter + 1))
      counter += 1
    end
  end
  if eps == 0.0001 || eps == 0.00001
    a = []
    a.push(list.take_while { |sum, prev| (prev - sum).abs > eps })
    a[-1][-1][-1]
  else
    'Неверно введённое значение точности'
  end
    end
