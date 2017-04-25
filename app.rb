require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Application
  get '/' do
    'Hello world!'
  end
end
