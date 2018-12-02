require 'spec_helper'
require_relative '../common_letter_checker.rb'

RSpec.describe CommonLetterChecker do
  it 'returns two strings that are one letter different' do
    strings = ['abc', 'eee', 'acc']
    expect(described_class.(strings)).to eq ['abc', 'acc']
  end
end
