require('rspec')
require('word_count')

describe('String#word_count') do
  it('will detect the matching word in a string and return how many times that string appears') do
    expect('cat'.word_count('cat')).to(eq(1))
  end
end
