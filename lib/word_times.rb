class String
  def word_times(test_word)
    frequency = 0
#gsub will remove any non-letters from the either text string then split will
#turn the string into an array of words"
    input_words = self.gsub(/[^a-z\s]/, "").split(" ")
    input_words.each do |word|
      if word == test_word
        frequency = frequency + 1
      end
    end
    frequency

  end
end
