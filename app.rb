# This is the main page that runs under sinatra
# it will redirect to the erb file mentioned in erb()
# to start sinatra and run the page simply type 'ruby app.rb'

require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/scrabble_score')
require('pry')

get('/form') do
  erb(:form_name)
end

get('/page_name') do
  @variable = params.fetch("input_element_name").method()
  erb(:landing_page)
end
