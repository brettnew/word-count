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
    expect('cat'.word_count('good cat bad cat mad cat sad cat')).to(eq(4))
  end
  it('will account for numbers') do
    expect('cat1'.word_count('good cat9 bad cat1 mad cat sad cat')).to(eq(1))
  end
  it('will account for random capitalization') do
    expect('cAt'.word_count('good cat bad Cat mad caT sad CAT')).to(eq(4))
  end
  # it('will account for punctuation') do
  #   expect('fight'.word_count('fight the good fight!')).to(eq(2))
  # end
end
