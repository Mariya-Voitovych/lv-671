# frozen_string_literal: true

# Deoxyribonucleic acid, DNA is the primary information storage molecule in biological systems. It is composed of four
#   nucleic acid bases Guanine ('G'), Cytosine ('C'), Adenine ('A'), and Thymine ('T').
# Ribonucleic acid, RNA, is the primary messenger molecule in cells. RNA differs slightly from DNA its chemical
#   structure and contains no Thymine. In RNA Thymine is replaced by another nucleic acid Uracil ('U').
# Create a function which translates a given DNA string into RNA.
# For example:
# "GCAT"  =>  "GCAU"
# The input string can be of arbitrary length - in particular, it may be empty. All input is guaranteed to be valid,
#   i.e. each input string will only ever consist of 'G', 'C', 'A' and/or 'T'.

def dna_to_rna(dna)
  elems = 'TAGC'
  dna.upcase.chars.each { |elem| return '' unless elems.include?(elem) }
  dna.upcase.gsub('T', 'U')
end

if $PROGRAM_NAME == __FILE__
strings = ['TAGCTAGC', 'TAATTAGCCAT']
strings.each { |string| puts "DNA: #{string}\nRNA: #{dna_to_rna(string)}" }
end