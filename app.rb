require 'sinatra'
get '/' do
  "hello!"
end

get '/secret' do
  "Best peer group ever!"
end

get '/extra' do
  "another route"
end

get '/hello_world' do
  "Hello, world!"
end


get '/random-cat' do
  @cat_name = ['Moew', 'Jerry', 'Tom'].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name_color = params[:namecolor]|| "#49B0D0"
  @color = params[:color] || "#86CB1E"
  @cat_name = params[:name] || "Kitty Kat"
  erb(:index)
end

set :session_secret, 'super secret'