require 'rubygems'
gem 'haml'
gem 'rcov'
gem 'sinatra'
gem 'sinatra-r18n'

require 'yaml'
require 'haml'
require 'rcov'

require 'sinatra'
require 'sinatra/r18n'

require 'models/meses'

configure :production do
  set :default_locale, 'pt-br'
end

configure :development do
  set :default_locale, 'pt-br'
end

get '/' do
  haml :index
end

get '/descertificado' do
  nome         = trim_param(params[:nome],25)
  certificados = trim_param(params[:certificados],70)
  data         = Date.today.strftime("%d de #{mes_pt_BR(Date.today)} de %Y")
  haml :descertificado, :locals => { :nome => nome,
                                     :certificados => certificados,
                                     :data => data
                                    }
end

helpers do
  def trim_param(param,limite)
    (not param.nil? and param.length > limite)? param[0,limite] : param
  end
end

