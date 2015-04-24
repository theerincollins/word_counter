class String
  def word_times(test_word)
    frequency = 0
    #Test that test_word is only one word.
    if test_word.include?(" ")
      "multiple words"

    #Test to make sure user entered a word to count and a string in which
    #to find the word.
    elsif (test_word != "" && self != "")

      #gsub will remove any non-letters from either text string, downcase will
      #make all letters the same case then split will turn the string into an
      #array of words

      #COMMENT TO INSTRUCTOR - I am unsure what the i does in this line of code
      #/[^a-z\s]/i. When i do not have the i, the function deletes the whole word
      #for example CRANE!.gsub(/[^a-z\s]/i, "") = ""
      input_words = self.gsub(/[^a-z\s]/i, "").downcase().split(" ")
      test_word.gsub!(/[^a-z\s]/, "")
      test_word = test_word.downcase()

      #check each word in the input string to see if it equals the test word
      input_words.each do |word|
        if word == test_word
          frequency = frequency + 1
        end
      end
      frequency

    else
      #returns no value if user did not input one of the fields
      "no value"
    end
  end
end
