n, m = gets.split.map(&:to_i)
n = n%12
foo = [m*6.0, (n+m/60.0)*30.0]
deg = foo.max-foo.min
puts deg<=180 ? deg : 360-deg