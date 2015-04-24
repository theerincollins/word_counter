require('sinatra')
require('sinatra/reloader')
require('./lib/word_times')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/final') do
  @input_string = params.fetch("input_string")
  @test_word = params.fetch("test_word")
  @result = @input_string.word_times(@test_word)
  erb(:final)
end
