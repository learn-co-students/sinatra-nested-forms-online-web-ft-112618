require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      @ships_1 = Ship.new(params[:pirate][:ships].first)
      @ships_2 = Ship.new(params[:pirate][:ships].last)
      erb :'pirates/show'
    end

  end
end
