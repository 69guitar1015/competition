n = gets.to_i
m = 0
n.to_s.each_char.reverse_each.with_index do |x, i|
  x = x.to_i
  m += x * i * (10**(i-1)).to_i
  m += n%(10**i)+1 if x==1
  m += 10**i if x >= 2
end
puts m