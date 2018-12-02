module CommonLetterChecker

  extend self

  def call(strings)
    strings.each do |string|
      string.split(//).each_with_index do |s, i|
        regex_match = string.dup
        regex_match[i] =  '.'
        matches = strings.grep(/#{regex_match}/)
        return matches if matches.count == 2
      end
    end
  end
end
