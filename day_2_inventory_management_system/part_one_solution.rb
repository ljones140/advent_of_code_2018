require_relative 'duplicate_letter_counter.rb'

ids = File.readlines("#{File.dirname(__FILE__)}/input.txt")

duplicate_sets = ids.map(&DuplicateLetterCounter.method(:call))
p duplicate_sets.map { |s| s[:two_letters]}.sum * duplicate_sets.map{ |s| s[:three_letters]}.sum

