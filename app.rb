require 'sinatra/base'
require './lib/animal'

class NoahsArk < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/ark' do
    Animal.add(params['female_animal'], params['male_animal'])
    redirect('/result')
  end

  post '/pair' do
    redirect('/')
  end

  get '/result' do
    @animals = Animal.view
    erb :result
  end

  #run! if app_file ==$0

end
