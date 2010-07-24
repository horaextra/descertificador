require 'rubygems'
gem 'haml'
gem 'rcov'
gem 'sinatra'

require 'yaml'
require 'haml'
require 'rcov'
require 'sinatra'


configure :production do
end

get '/' do
  haml :index
end

get '/descertificado' do
  haml :descertificado
end

