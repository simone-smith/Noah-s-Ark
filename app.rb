require 'sinatra/base'

class NoahsArk < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/ark' do
    session[:female_animal] = params[:female_animal]
    session[:male_animal] = params[:male_animal]
    redirect('/result')
  end

  get '/result' do
    @female_animal = session[:female_animal]
    @male_animal = session[:male_animal]
    erb :result
  end

  #run! if app_file ==$0

end
