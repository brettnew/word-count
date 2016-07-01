require('rspec')

class String
  define_method(:word_count) do |words_list|
    initial_string = self
    words_list = words_list.split(" ")
    counter = 0
    new_array = []
    words_list.each() do |word|
      # word_array = word.split(" ")
      if initial_string == word
        counter = counter.+(1)
      else
        new_array.push(word)
      end
    end
    counter
    # new_array
  end
end
