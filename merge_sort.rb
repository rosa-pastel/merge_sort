def merge_sort(array)
    if array.length <= 1
        array
    else
        half = array.length/2.round
        first_half = merge_sort(array[0..half-1])
        second_half = merge_sort(array[half..-1])
        merge(first_half, second_half)
    end
end
def merge(first_half, second_half, a=0, b=0, merged_array=[])
    if (first_half[a].nil? && second_half[b].nil?)
        merged_array
    elsif second_half[b].nil?
        merged_array.push(first_half[a])
        merge(first_half, second_half, a+1, b, merged_array)
    elsif first_half[a].nil?
        merged_array.push(second_half[b])
        merge(first_half, second_half, a, b+1, merged_array)
    elsif first_half[a].to_s.to_i < second_half[b].to_s.to_i
        merged_array.push(first_half[a])
        merge(first_half, second_half, a+1, b, merged_array)
    elsif second_half[b].to_s.to_i < first_half[a].to_s.to_i
        merged_array.push(second_half[b])
        merge(first_half, second_half, a, b+1, merged_array)
    end
end
p merge_sort([2,3,1,0,1891,9,6,5,4])