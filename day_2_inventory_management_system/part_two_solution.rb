require_relative 'common_letter_checker.rb'

ids = File.readlines("#{File.dirname(__FILE__)}/input.txt").map(&:strip)

p commons = CommonLetterChecker.call(ids)
p commons.first.split(//).select { |letter| commons.last.split(//).include?(letter) }.join
