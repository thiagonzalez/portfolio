require 'rubygems'
require 'compass'
require 'sinatra'
require 'haml'


# Sinatra options
configure do
  set :haml, {:format => :html5, :escape_html => true}
  set :scss, {:style => :compact, :debug_info => false}
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end


# Compass options
get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"stylesheets/#{params[:name]}" ) 
end


# URLs
get '/' do
  haml :index
end