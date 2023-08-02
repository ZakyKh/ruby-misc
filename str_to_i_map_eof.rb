ARGF.each_with_index do |line, idx|
    line_split = line.split(" ")
    nums = line_split.map { |e| e.to_i }
    print "#{nums}\n"
end