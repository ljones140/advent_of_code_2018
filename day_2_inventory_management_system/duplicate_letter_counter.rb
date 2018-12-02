module DuplicateLetterCounter

  extend self

  def call(letters)
    letter_counter = {}
    letters.split(//).each do |letter|
      count = letter_counter.fetch(letter, 0) + 1
      letter_counter[letter] = count
    end
    {
      two_letters: letter_exists(letter_counter, 2),
      three_letters: letter_exists(letter_counter, 3)
    }
  end

  private

  def letter_exists(letter_counter, count)
    return 1 if letter_counter.values.any? { |v| v == count}
    0
  end
end
