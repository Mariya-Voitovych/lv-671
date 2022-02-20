puts "This program calculate the average and variance of rainfall for the city.\n\n"

def value_of_month(town, strng)
  month_values = []
  data_new = strng.split("\n").each_with_object({}) do |str, hsh|
    city, city_value = str.split(':')
    hsh[city] = city_value.split(',').each_with_object({}) do |s, h|
      month, value = s.split(' ')
      h[month] = value
    end
  end
  return [] if data_new[town].nil?

  data_new[town].each do |i|
    res = i[1].to_f
    month_values.push(res)
  end
  month_values
end

def mean(town, strng = '')
  transformed_data = value_of_month(town, strng)
  return -1 if transformed_data.empty?

  result = 0
  value_of_month(town, strng).each do |i|
    result += i
  end
  result / value_of_month(town, strng).length
end

def variance(town, strng = '')
  transformed_data = value_of_month(town, strng)
  return -1 if transformed_data.empty?

  m = mean(town, strng)
  sum = 0.0
  transformed_data.each { |v| sum += (v - m)**2 }
  sum / value_of_month(town, strng).length
end
