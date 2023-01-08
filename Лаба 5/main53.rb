def Laba53(st)
  ar = []
  (0...st.length).each do |i|
    myr = st[i].split
    (0...myr.length).each do |i|
      myr[i] = myr[i].reverse if i.even?
    end
    ar.push(myr.join(' '))
  end
  [st, ar]
end
