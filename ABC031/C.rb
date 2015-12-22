n = gets.to_i
a = gets.split.map(&:to_i)

ans = -50*50-1
n.times do |i|
	ao_max = -50*50-1
	taka_max = -50*50-1
	n.times do |j|
		foo = a[i..j]
		foo = a[j..i] if i>j

		ao, taka = 0, 0
		foo.map.with_index do |e, i|
			if i%2==0 then taka += e
			else ao += e
			end
		end

		if ao>ao_max
			ao_max = ao
			taka_max = taka
		end		
	end
	ans = taka_max if taka_max>ans
end

puts ans