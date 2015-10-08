require "sinatra"
require "haml"
require "pony"

get '/' do
erb :home
end

get '/home' do
erb :home
end

get '/contact' do 
erb :form
	end

get '/resume' do 
erb :resume
	end

get '/insta' do 
erb :insta
	end

post '/contact' do #Tried to get my form to actually contact me.
					#Having issues piping in the params, but the email sends!
	name = params[name]
	mail = params[mail]
	body = params[body]
	Pony.mail :to => 'anth.germ@gmail.com',	
		  :from => "anth.ruby.dev@gmail.com",
		  :subject => 'You have a message from ' + name.to_s

	redirect '/success'
end

