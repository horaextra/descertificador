require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "meses#mes_pt_BR" do

  it "deve traduzir para 'Julho' quando o mês da data for 7" do
    data = Date.new(2010, 07, 25)
    mes_pt_BR(data).should == "Julho"
  end

  it "deve retornar '' caso a data seja nula" do
    mes_pt_BR(nil).should == ''
  end

end

