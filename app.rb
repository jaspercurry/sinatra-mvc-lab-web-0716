require_relative 'config/environment'

require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  
    dumb = PigLatinizer.new

    @dumb = dumb.piglatinize(params[:user_phrase])
  end
end
