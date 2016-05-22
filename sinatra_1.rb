require 'sinatra'
require 'pry'
require 'babbler'

get '/' do 
	erb:about
end
	
get '/contact' do
	"Contact Me"
	erb:contact
end

get '/resume' do
	"resume"
	erb:resume
end

get '/secret' do
	erb:secret
end

post '/secret' do
	params[:message].reverse
end

not_found do
	status 404
	erb:error
end