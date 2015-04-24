require('rspec')
require('pry')
require('word_times')

describe('String#word_times') do

  it('returns a Fixnum value equal to the frequency of a word in a given string including only that word') do
    expect("dog".word_times("dog")).to(eq(1))
  end

end
