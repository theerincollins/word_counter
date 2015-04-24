class String
  def word_times(test_word)
    frequency = 0
    input_words = self.split(" ")
    input_words.each do |word|
      if word == test_word
        frequency = frequency + 1
      end
    end
    frequency

  end
end
