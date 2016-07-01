require('rspec')
require('word_count')

describe('String#word_count') do
  it('will take the user input string, compare to identical second user input string and return how many times first string appears in the second string') do
    expect('cat'.word_count('cat')).to(eq(1))
  end
  it('will take the user input string, compare to second user input string with multiple words and return how many times first string appears in the second string') do
    expect('cat'.word_count('cat attack to come')).to(eq(1))
  end
end
