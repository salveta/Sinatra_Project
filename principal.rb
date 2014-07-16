require 'sinatra'

  get '/' do
    erb :form
  end

  post '/form' do
    erb :template, :locals => {:params => params}
  end

  post '/templates' do
    display = params[:template]
    erb display.to_sym, :locals => {:params => params}
  end

  get '/:template/:eventname/:eventhour/:place/:description/:name' do
    display = params[:template]
    erb display.to_sym, :locals => {:params => params}
  end