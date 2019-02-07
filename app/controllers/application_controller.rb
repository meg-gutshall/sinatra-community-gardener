class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "lame string that will soon be hexed"
    set :views, "app/views"
    set :public_folder, "public"
  endgit

  get '/' do
    "Hello world!"
  end

  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end
  end

end
