require 'spec_helper'
require_relative '../duplicate_letter_counter.rb'

RSpec.describe DuplicateLetterCounter do
  it 'returns results with zero if no letters are duplicated in string'do
    expect(described_class.('abcdef')).to eq(
      { two_letters: 0, three_letters: 0 }
    )
  end

  it 'returns two letters as 0 if a letters is twice in string'do
    expect(described_class.('abbdef')).to eq(
      { two_letters: 1, three_letters: 0 }
    )
  end

  it 'returns two_letters as 1 if a letters is twice in string'do
    expect(described_class.('abbdef')).to eq(
      { two_letters: 1, three_letters: 0 }
    )
  end

  it 'returns three_letters 1 and two_letters 0 if a letters is three times in string'do
    expect(described_class.('aaadef')).to eq(
      { two_letters: 0, three_letters: 1 }
    )
  end

  it 'only returns 1 even if there are more than one duplication'do
    expect(described_class.('wweeaaaddd')).to eq(
      { two_letters: 1, three_letters: 1 }
    )
  end

  it 'returns three_letters as 0 if a letter is duplicated more than 3 times' do
    expect(described_class.('aaa')).to eq(
      { two_letters: 0, three_letters: 1 }
    )

  end

end
