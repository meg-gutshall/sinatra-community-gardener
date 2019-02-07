class SessionsController < ApplicationController
  get '/signup' do
    erb :'/sessions/signup'
  end

  post '/users' do
    if params[:user][:name].empty? || params[:user][:password].empty? || params[:user][:email].empty?
      redirect '/signup'
    else
      user = User.create(params[:user])
      session[:user_id] = user.id   # More specific than just session[:id]
      redirect "/users/#{user.id}"
    end
  end
end

#  PSEUDOCODE

# 1. validate params
# 2. create user
# 3. log user in
# 4. REDIRECT NOT RENDER TO ???