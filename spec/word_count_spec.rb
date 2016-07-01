require('rspec')
require('word_count')

describe('String#word_count') do
  it('will compare to identical second string and return how many times first string appears in the second string') do
    expect('cat'.word_count('cat')).to(eq(1))
  end
  it('will compare to string with multiple words and return how many times first string appears in the second string') do
    expect('cat'.word_count('cat attack to come')).to(eq(1))
  end
  it('will compare to string with multiple same words and return how many times first string appears in the second string') do
    expect('cat'.word_count('cat cat cat cat')).to(eq(4))
  end
end
