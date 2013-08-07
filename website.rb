require 'rubygems'
require 'compass'
require 'sinatra'
require 'haml'

class SassEngine < Sinatra::Base
  set :views, File.join('public', 'stylesheets')

  get '/:file.css' do
    scss params[:file].to_sym, Compass.sass_engine_options.merge(style: :compact)
  end
end

class ThiagoGonzalezApp < Sinatra::Base
  use SassEngine

  # Application configuration
  set :run, false
  set :haml, format: :html5

  get '/' do
    haml :index
  end
end
