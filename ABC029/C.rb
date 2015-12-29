def saiki(i, s)
	if i==0
		puts s
		return
	end

	("a".."c").each{|x| saiki(i-1, s+x)}
	return
end

n = gets.to_i
saiki(n, "") 