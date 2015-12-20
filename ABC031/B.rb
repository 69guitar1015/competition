L, H = gets.split.map(&:to_i)
gets.to_i.times do
	a = gets.to_i
	if a < L then puts L-a
	elsif a <= H then puts 0
	else puts -1
	end
end