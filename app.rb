require 'sinatra/base'

class NoahsArk < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/ark' do
    erb :result
  end

  #run! if app_file ==$0

end
