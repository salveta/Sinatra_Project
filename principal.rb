require 'rubygems'
require 'sinatra'


	get '/' do
		erb :form
	end

	post '/' do
		params[:form]
	end


