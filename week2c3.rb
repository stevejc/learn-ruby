def linefy(text)
  lines = text.split("\n")
  number_of_lines = lines.length.to_s
  spacing = number_of_lines.length
  lines.each_with_index.map do |line, line_num|
    text +=  "Line #{line_num.next.to_s.rjust(spacing)}: #{line}\n"
  end
  
  text
end

def linefy2(text)
  linedfied_text = ""
  text.lines.with_index(1) {|line, line_num| linedfied_text += "Line #{line_num.to_s.rjust(text.lines.count.to_s.length)}: #{line}"}
  linedfied_text
end

s = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nDuis imperdiet sem eu quam.\nDonec bibendum tincidunt purus.\nNunc eu tellus sed turpis volutpat pellentesque.\nNunc accumsan varius elit.\nAenean sit amet magna eget odio ornare vulputate.\nUt ullamcorper tellus non magna.\nSed non arcu vel libero posuere ultricies.\nSuspendisse tincidunt ullamcorper tellus.\nIn ornare lacus ut turpis.\n"

#text = linefy(s)
text2 = linefy2(s)

puts text2





