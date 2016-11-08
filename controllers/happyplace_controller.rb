class HappyplaceController < ApplicationController
  get '/' do
    Happyplace.all.to_json
  end

  get '/:id' do
    @id = params[:id]
    Happyplace.find(@id).to_json
  end

  post '/' do
    @name = params[:name]
    @lat = params[:lat]
    @lon = params[:lon]

    @model = Happyplace.new
    @model.name = @name
    @model.lat = @lat
    @model.lon = @lon
    @model.save
    @model.to_json
  end

  patch '/:id' do
    @id = params[:id]
    @name = params[:name]
    @lat = params[:lat]
    @lon = params[:lon]

    @model = Happyplace.new
    @model.name = @name
    @model.lat = @lat
    @model.lon = @lon
    @model.save
    @model.to_json
  end

  delete '/:id' do
    @id = params[:id]
    @model = Happyplace.find(@id)
    @model.destroy
    { :message => "item of id " + @id + "was removed."}.to_json
  end

end

