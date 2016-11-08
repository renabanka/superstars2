require 'sinatra/base'



#controllers
require './controllers/application_controller'
require './controllers/superstar_controller'
require './controllers/fairytale_controller'
require './controllers/happyplace_controller'

#models
require './models/superstar'
require './models/fairytale'
require './models/happyplace'

map('/') {run ApplicationController}
map('/api/superstars') {run SuperstarController }
map('/api/fairytales') {run FairytaleController}
map('/api/happyplaces') {run HappyplaceController}

#before/after filter
before '/*' do
  puts "Route Log:"
  puts request.host
  puts params
  puts request.path

end

after '/*' do
  puts 'Completed Route Log:'
  puts response.body
  puts response.status
end