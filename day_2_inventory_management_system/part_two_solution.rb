require_relative 'common_letter_checker.rb'

ids = File.readlines("#{File.dirname(__FILE__)}/input.txt").map(&:strip)

p commons = CommonLetterChecker.call(ids)
p commons.first.chars.select { |letter| commons.last.chars.include?(letter) }.join
