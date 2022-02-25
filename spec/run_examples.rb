require_relative 'spec_helper'

examples = {
  'zastavskyi' => [proc do
    sequences = [
      [1, 3, 5, 9],
      [120, 240, 480]
    ]
    sequences.each { |sequence| puts "Sequence: #{sequence}\nMissing element: #{find(sequence)}" }
  end,
                   proc do
                     n = 6
                     puts "Multiplication table with size #{n}"
                     table = multiplication_table(n)
                     table.each { |row| p row }
                   end,
                   proc do
                     sequences = [
                       [1, 1, 1, 3, 1],
                       [0, 0, 1, 0, 0]
                     ]
                     sequences.each do |sequence|
                       puts "Sequence: #{sequence}\nDifferent element: #{stray(sequence)}"
                     end
                   end,
                   proc do
                     strings = ['hello!', 'world!!', '!for!', 'every!one!!']
                     strings.each do |string|
                       puts "String: #{string}\nChanged string: #{remove_exclamation_marks(string)}"
                     end
                   end,
                   proc do
                     strings = %w[TAGCTAGC TAATTAGCCAT]
                     strings.each { |string| puts "DNA: #{string}\nRNA: #{dna_to_rna(string)}" }
                   end]
}

examples.default = [proc do puts 'Invalid name' end] * 5
name = gets.chomp
num = gets.chomp.to_i
examples[name][num].call