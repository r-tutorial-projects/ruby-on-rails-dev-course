a = ("rube".."rubz").to_a
b = a.shuffle
p a.shuffle!
p a
p a.reverse!
p a.length


a.each { |f| p "OK, #{f.reverse}"  }
a.select { |f| f.end_with? "r"}.each { |f| p f}
