n, a = gets.split.map(&:to_i)
k = gets.to_i
bs = gets.split.map(&:to_i)

done = []
while k>0
	if done.index(a)
		k = k % (done.length-done.index(a))
		break
	else
		done << a
		a = bs[a-1]
		k -= 1
	end
end

while k>0
	a = bs[a-1]
	k -= 1
end

puts a