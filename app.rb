require 'sinatra'
require 'capybara/dsl'
require 'selenium-webdriver'

post '/named-cat' do
  @age = params[:age]
  @name_color = params[:namecolor]|| "#49B0D0"
  @color = params[:color]
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end

set :session_secret, 'super secret'