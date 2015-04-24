require('rspec')
require('pry')
require('word_times')

describe('String#word_times') do

  it('returns a Fixnum value equal to the frequency of a word in a given string
  including only that word') do
    expect("dog".word_times("dog")).to(eq(1))
  end

  it('returns a Fixnum value equal to the frequeny of a word in a given string
  of multiple words only') do
    expect("this dog that dog red dog small dog".word_times("dog")).to(eq(4))
  end

  it('returns a Fixnum value equal to the frequency of a word in a given stirng
  of multiple words and punctuation') do
    expect("this dog, that dog".word_times("dog")).to(eq(2))
  end

  it('returns a string with error message if no text was entered for the test
  word') do
    expect("free lunch for left handed folks".word_times("")).to(eq("no value"))
  end

  it('returns a descriptive string if user entered more than one test word') do
  expect("free lunch for left handed folks".word_times("tick tock")).to(eq("multiple words"))
end

end
