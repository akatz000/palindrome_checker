require 'rspec'
require_relative 'code.rb'

RSpec.describe "palindrome?" do
  it "returns false for empty string" do
    expect(palindrome?('')).to eq(false)
  end

  it "returns true for a string with length of 1" do
    expect(palindrome?('f')).to eq(true)
  end

  it "ignores capitalization" do
    expect(palindrome?('AbCDcBa')).to eq(true)
  end

  it "works for various lengths" do
    expect(palindrome?('abc')).to eq(false)
    expect(palindrome?('abA')).to eq(true)
    expect(palindrome?('abca')).to eq(false)
  end

  it "passes examples in description" do
    expect(palindrome?('A Santa at NASA')).to eq(true)
    expect(palindrome?('racecar')).to eq(true)
    expect(palindrome?('eye')).to eq(true)
    expect(palindrome?('Acrobats stab orca')).to eq(true)
    expect(palindrome?('anna')).to eq(true)
  end
end
