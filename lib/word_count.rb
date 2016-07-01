require('rspec')

class String
  define_method(:word_count) do |words_list|
    initial_string = self.downcase()
    words_list = words_list.downcase.split(" ")
    counter = 0
    words_list.each() do |word|
      if initial_string == word
        counter = counter.+(1)
      end
    end
    counter
  end
end
