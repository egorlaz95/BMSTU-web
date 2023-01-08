def Laba61(eps)
  sum = 0
  k = 1.0
  prev = 1.0
  loop do
    prev = sum
    sum += 1.0 / (k * (k + 1))
    k += 1
    break if (prev - sum).abs < eps
  end
  if eps == 0.0001 || eps == 0.00001
    sum
  else
    'Неверно введённое значение точности'
  end
    end
