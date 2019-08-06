require 'sinatra'

post '/named-cat' do
  p params
  @age = params[:age]
  @name_color = params[:namecolor]|| "#49B0D0"
  @color = params[:color]
  @name = params[:name]
  erb(:index)
end

get '/form' do
  p params
  @name = params[:name]
  erb(:form)
end

set :session_secret, 'super secret'