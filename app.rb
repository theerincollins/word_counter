require('sinatra')
require('sinatra/reloader')
require('./lib/word_times')
also_reload('lib/**/*.rb')

get ('/') do
  erb (:index)
end
