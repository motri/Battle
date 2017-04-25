
require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :session_secret, 'here be dragons'

  get '/' do
    'Hello world!'
  end

  get '/test' do
    'shotgun'
  end

end
