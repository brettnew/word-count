require('rspec')

class String
  define_method(:word_count) do |words_list|
    initial_string = self
    words_list = words_list.split(" ")
    counter = 0
    words_list.each() do |word|
      if initial_string == word
        counter = counter.+(1)
      end
    end
    counter
  end
end
