require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @initial_word = params.fetch('initial_word')
  @word_list = params.fetch('word_list')
  @result = @initial_word.word_count(@word_list)
  erb(:word_count)
end
