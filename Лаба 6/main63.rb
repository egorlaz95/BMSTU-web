def Intprg(a1, b1, a2, b2, xd2, n)
  h1 = (b1 - a1).fdiv(n)
  h2 = (b2 - a2).fdiv(n)
  x1 = a1.to_f
  x2 = a2.to_f
  sum1 = 0
  sum2 = 0
  (1..n).each do |_i|
    xds1 = yield x1
    xds2 = xd2.call(x2)
    sum1 += xds1
    sum2 += xds2
    x1 += h1
    x2 += h2
  end
  if n <= 0
    'Было введено некорректное значение'
  else
    ['Первый интеграл равен: ', sum1 * h1, 'Второй интеграл равен: ', sum2 * h2]
  end
    end
