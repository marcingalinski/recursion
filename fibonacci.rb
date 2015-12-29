def fibs num
	f = [0, 1]
	(num - 2).times { f.push(f[-2] + f[-1]) }
	f.first(num)
end

def fibs_rec num
	case num
		when 0 then []
		when 1 then [0]
		when 2 then [0, 1]
		else 
			prev = fibs_rec(num - 1)
			prev << prev[-1] + prev[-2]
	end
end