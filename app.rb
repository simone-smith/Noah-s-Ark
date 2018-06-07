require 'sinatra/base'

class NoahsArk < Sinatra::Base

  get '/' do
    "Welcome to the end of the world as you know it"
  end

  #run! if app_file ==$0

end
