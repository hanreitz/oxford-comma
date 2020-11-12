def oxford_comma(array)
    if array.size <= 1
        array.each {|thing| return array.join}
    elsif array.size == 2
        array.each {|thing| return array.join(" and ")}
    else 
        new_array = []
        new_array << array.slice!(0..array.size - 2)
        new_array << "and #{array[-1]}"
        new_array.each {|thing| return new_array.join(", ")}
    end
end