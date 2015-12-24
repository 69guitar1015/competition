n, a = gets.split.map(&:to_i)
k = gets.to_i
bs = gets.split.map(&:to_i)

pn = [0]*n
bs.each{|b| pn[b-1] += 1}

que = []
n.times{|i| que.push(i) if pn[i]==0}
while que.length > 0
	s = que.shift
	pn[bs[s]-1] -= 1
	if pn[bs[s]-1]==0
		que.push(s)
	end
end

memo = -1
m = 1
while k>0
	if memo==-1
		if pn[a-1]==1
			memo = a
		end
	elsif memo==a
		break
	else
		m += 1
	end


	if k>0
		a = bs[a-1]
		k = k - 1
	end
end

k = k%m

while k>0
	a = bs[a-1]
	k = k - 1
end

puts a