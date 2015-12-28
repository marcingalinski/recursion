def fibs num
	f = [0, 1]
	(num - 2).times { f.push(f[-2] + f[-1]) }
	puts f.first(num).join(' ')
end