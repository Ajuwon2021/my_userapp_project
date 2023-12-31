require 'sinatra'
require_relative './my_user_model'
require 'json'

set('views', './views')

enable :sessions

set :port, 8080
set :bind, '0.0.0.0'

get '/' do
    erb :index
end

get '/users' do
    User.all.collect do |row|
        row.to_hash.to_json
    end
end

post '/sign_in' do
    user = User.filter_password(params['email'], params['password'])
    if user
        session[:user_id] = user.id
        session[:password] = user.password
        "Signed in" 
    else
        "Not authorized"
    end
end

post '/users' do
    User.create(params)
    "User created"
end

put '/users' do
    params['password']
    if session[:user_id]
        user_updated = User.update(session[:user_id], :password, params['password'])
        "#{user_updated}"
    else
        "Not authorized"
    end
end

delete '/sign_out' do
   if session[:user_id]
    user = User.get(session[:user_id])
    session[:user_id] = nil
    "Signed out"
   end
end

delete '/users' do
    if session[:user_id]
        user = User.get(session[:user_id])
        if user
            User.destroy(session[:user_id])
            session[:user_id] = nil
            "User deleted"
        end
    end
end

# https://web-o3fb38490-f63b.docode.fi.qwasar.io
# https://web-o3fb38490-f63b.docode.fi.qwasar.io/users
# https://web-o3fb38490-f63b.docode.fi.qwasar.io/sign_out
# https://web-o3fb38490-f63b.docode.fi.qwasar.io/sign_in

