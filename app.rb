require('sinatra')
require('sinatra')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
