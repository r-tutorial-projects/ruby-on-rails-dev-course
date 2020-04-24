hashes = {'a' => 1, 'b' => 2, 'c' => 3}
p hashes['b']
a = {a: 3, b: 'c'}
p a
p a[:a]


a.select { |k, v| v.is_a? Integer }
    .each do |key, value|
  print key.class.to_s + ' ' + value.class.to_s
end
