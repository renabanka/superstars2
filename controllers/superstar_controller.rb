class  SuperstarController < ApplicationController
  get '/' do
    {:message => 'all items soon'}.to_json
  end

  get '/fab' do
    #teach you do to rule the database
    #use activerecord
    #create
    @christopher = Superstar.new
    @christopher.talent = 'Socialiate'
    @christopher.name = 'Christopher McAwesome'
    @christopher.outfit = 'blue sweater'
    @christopher.save
    @christopher.to_json

    #CRUD

    #delete
    #update
    #read


  end
end