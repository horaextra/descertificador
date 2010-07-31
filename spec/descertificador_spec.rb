require File.expand_path(File.dirname(__FILE__) + "/spec_helper")

describe "descertificador" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it "deve responder a url '/' " do
    get "/"
    last_response.should  be_ok
  end

  describe "/descertificado" do

    it "deve responder a url " do
      get "/descertificado"
      last_response.should  be_ok
    end

    it "deve reduzir nome para 25 carecteres" do
      nome = "aaaaaaaaaabbbbbbbbbbssssssssss"
      get "/descertificado", :nome => nome #30 carecteres
      last_response.body.include? nome[0,25]
    end

    it "deve reduzir certificados para 75 carecteres" do
      certificados = ("aaaaaaaaaabbbbbbbbbbssssssssss"*3)
      get "/descertificado", :certificados =>  certificados #90 carecteres
      last_response.body.include? certificados[0,75]
    end

  end

  describe "I18n" do
    it "should translate to 'pt-BR' by default" do
      get "/"
      last_response.body.include? "Certificações"
    end

    it "should translate 'Certificações' to 'Name' with locale 'en'" do
      get "/"
      last_response.body.include? "Certifications"
    end
  end
end

