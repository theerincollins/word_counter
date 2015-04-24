require('sinatra')
require('sinatra/reloader')
require('./lib/word_times')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/final') do
  @result = params.fetch("input_string").word_times(params.fetch("test_word"))
  erb(:final)
end
