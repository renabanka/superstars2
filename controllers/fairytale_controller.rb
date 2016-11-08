class FairytaleController < ApplicationController
  get '/' do
    Fairytale.all.to_json
  end


  get '/:id' do
    @id = params[:id]
    Fairytale.find(@id).to_json
  end

  post '/' do
    @title = params[:title]
    @author = params[:author]
    @comments = params[:comments]
    @moral = params[:moral]

    @model = Fairytale.new
    @model.title = @title
    @model.author = @author
    @model.comments = @comments
    @model.moral = @moral
    @model.save

    @model.to_json

  end


  patch '/:id' do
    @id = params[:id]
    @title = params[:title]
    @author = params[:author]
    @comments = params[:comments]
    @moral = params[:moral]
    @model = Fairytale.find(@id)
    @model.title = @title
    @model.author = @author
    @model.comments = @comments
    @model.moral = @moral
    @model.save
    @model.to_json

  end

  delete '/:id' do
    @id = params[:id]
    @model = Fairytale.find(@id)
    @model.destroy
    { :message => "Item of id" + @id + "was removed."}.to_json
  end

end