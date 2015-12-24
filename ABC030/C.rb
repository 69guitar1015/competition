n, m = gets.split.map &:to_i
x, y = gets.split.map &:to_i
as = gets.split.map &:to_i
bs = gets.split.map &:to_i

i, j, t, n = 0, 0, 0, 0
while true
	if as.length == i then break end
	while as[i] < t
		i += 1
		if as.length == i then break end
	end
	if as.length == i then break end
	t = as[i] + x

	if bs.length == j then break end
	while bs[j] < t
		j += 1
		if bs.length == j then break end
	end
	if bs.length == j then break end
	t = bs[j] + y
	n += 1
end
puts n