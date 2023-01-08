def laba71 st
    File.open("F.txt", "w") do |f|     
        f.write(st)   
    end
    array = File.readlines 'F.txt'
    str = array[0]
    str = str.downcase
    File.open("G.txt", "w") do |f|     
        f.write(str)   
    end
end
