def years(seconds)
  seconds / 31536000
end

def months(seconds)
  partial_year_seconds = seconds % 31536000
  months = partial_year_seconds / (31536000/12)
  case months
  when 0
    ""
  when 1
    " and #{months} month"
  else 
    " and #{months} months"
  end
end

ages = [979000000, 2158493738, 246144023, 1270166272, 1025600095, 980302800]

ages.each_with_index do |a, index|
  puts "Person #{index + 1} is #{years(a)} years#{months(a)} old."
end  



