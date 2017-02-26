require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/quotes/new' do
    erb :new_quote
  end

  get '/about' do
    erb :about
  end

  post '/quotes' do

    Quote.create(
      :body => params[:body],
      :source => params[:source]
    )

    redirect '/'
  end

end
