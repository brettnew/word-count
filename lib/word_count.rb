require('rspec')

class String
  define_method(:word_count) do |words_list|
    initial_string = self.split(" ")
    words_list = words_list.split(" ")
    counter = 0
    new_array = []
    words_list.each() do |word|
      if initial_string == words_list
        counter = counter.+(1)
      end
    end
    counter
  end
end
