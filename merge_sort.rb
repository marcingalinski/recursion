def merge_sort array
	return array if array.size <= 1
	a = merge_sort(array[0...(array.length / 2)])
	b = merge_sort(array[(array.length / 2)..-1])
	result = Array.new(array.size) do |_i|
		if b.empty? || a.any? && a.first < b.first
			a.slice!(0) 
		else 
			b.slice!(0)
		end 
	end
end