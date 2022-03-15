def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  begin_number.step(end_number, step).to_a.inject(&:+)
end

if $PROGRAM_NAME == __FILE__
  puts "This program returns sum of number sequence. If start number bigger than the last one method should return 0"
puts "sequence_sum(0, 10, 2) =>#{sequence_sum(0, 10, 2)}"
puts "sequence_sum(5, 1, 2) =>#{sequence_sum(5, 1, 2)}"
end