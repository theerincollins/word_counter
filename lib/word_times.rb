class String
  def word_times(test_word)
    frequency = 0
    #First test to make sure user entered a word to count and a string in which
    #to find the word.
    if (test_word != "" && self != "")
      #gsub will remove any non-letters from either text string then split will
      #turn the string into an array of words"
      input_words = self.gsub(/[^a-z\s]/, "").split(" ")
      test_word.gsub!(/[^a-z\s]/, "")
      input_words.each do |word|
        if word == test_word
          frequency = frequency + 1
        end
      end
      frequency
    else
      "Hey! You forgot to enter a value!"
    end
  end
end
