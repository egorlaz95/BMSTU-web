def Laba52(x)
  x = x.to_s(9).to_i.to_s.chars.map(&:to_i)
  nch = x.count { | item | item.odd? }
  ch = x.count { | item | item.even? }
  [nch, ch]
end
