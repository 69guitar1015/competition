a, b, c, d = gets.split.map &:to_i
puts b/a.to_f==d/c.to_f ? "DRAW": b/a.to_f>d/c.to_f ? "TAKAHASHI": "AOKI"