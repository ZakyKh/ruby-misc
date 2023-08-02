def is_numeric?(num_str)
    num_str.match(/\A(\+|-)?[0-9]+((\.|,)[0-9]+)?\Z/)
end

def split_succ_fail_toi(arr_str)
    [arr_str.reduce(0) { |accu, elem| is_numeric?(elem) ? accu + elem.to_i : accu }, arr_str.filter_map { |elem| "invalid:#{elem}" if !is_numeric?(elem) }]
end

ARGF.each_with_index do |line, idx|
    line_str = line.split(" ")
    print "%s %s\n" % (split_succ_fail_toi(line_str))
end