class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do
  	erb :index
  end
  
  post '/' do
    @the_user = params[:user]
    @the_fortune = get_fortune
    erb :results
  end
  

end
