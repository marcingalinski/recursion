def merge_sort array
	return array if array.size <= 1
	half = array.size / 2
	a = merge_sort array[0...half]
	b = merge_sort array[half..-1]
	result = Array.new(array.size) do |_i|
		(b.empty? || a.any? && a.first < b.first ? a : b).slice!(0)
	end
end