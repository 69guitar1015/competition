$k, $n = gets.split.map &:to_i
$vs, $ws = [], []
$n.times do
	v, w = gets.split
	$vs << v.split("")
	$ws << w
end

def saiki(i, n, j, d)
	if j==$n 
		d["flag"] = true
		return d
	end

	if i==$vs[j].length then return saiki(0, 0, j+1, d)
	end

	start = n+1
	start = $ws[j].length if i==$vs[j].length-1
	stop = $ws[j].length - ($vs[j].length-(i+1))

	(start..stop).each do |k|
		ret = Hash.new
		foo = $ws[j][n...k]

		next if foo.length>3

		if d[$vs[j][i]]
			return saiki(i+1, k, j, d) if d[$vs[j][i]]==foo
		else
			d[$vs[j][i]] = foo
			ret = saiki(i+1, k, j, d)
			if ret["flag"] then return ret
			else d[$vs[j][i]] = nil
			end
		end
	end
	return d
end

ans = {"flag"=>false}
ret = saiki(0, 0, 0, ans)

$k.times {|i| puts ans[(i+1).to_s]}