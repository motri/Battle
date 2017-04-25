
require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :session_secret, 'here be dragons'

  get '/' do
    'Testing infrastructure working!'
  end

run! if app_file == $0
end
