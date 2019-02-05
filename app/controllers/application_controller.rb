class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "SysRandom"
    set :views, "app/views"
    set :public_folder, "public"
  end

  get '/' do
    "Hello world!"
  end

end