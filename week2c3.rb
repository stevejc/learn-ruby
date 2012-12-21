def linefy(text)
  lines = text.split("\n")
  number_of_lines = lines.length.to_s
  spacing = number_of_lines.length
  lines.each_with_index.map do |line, line_num|
    line =  "Line #{line_num.next.to_s.rjust(spacing)}: #{line}"
  end
end

s = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nDuis imperdiet sem eu quam.\nDonec bibendum tincidunt purus.\nNunc eu tellus sed turpis volutpat pellentesque.\nNunc accumsan varius elit.\nAenean sit amet magna eget odio ornare vulputate.\nUt ullamcorper tellus non magna.\nSed non arcu vel libero posuere ultricies.\nSuspendisse tincidunt ullamcorper tellus.\nIn ornare lacus ut turpis.\n"

s_array = linefy(s)

puts s_array




