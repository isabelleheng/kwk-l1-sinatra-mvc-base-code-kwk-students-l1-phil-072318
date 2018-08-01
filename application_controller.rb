require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base
  get '/'do #'/' is a shortcut for the home page
    "This is your home page"
  end   
  
  get '/itslit' do 
    erb:index
  end 
  
  get '/hello/:bandfan/:band' do
    @bandfanname = params[:bandfan] 
    @bandname = params[:band]
    "Hello #{@bandfanname}! We are, #{@bandname}"
  end
  
  get '/kpop' do
    erb:kpop
  end 
  
  post '/kpop' do
    "My name is #{params[:name]}, and my favorite band is #{params[:favorite_band]}, and my favorite member is #{params[:favorite_member]}!"
  end
end