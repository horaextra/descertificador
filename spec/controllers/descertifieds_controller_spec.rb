require 'spec_helper'

describe DescertifiedsController do

  describe "#index" do

    it "should assing @descerfied" do
      get :index
      assigns[:descerfied].should be_instance_of Descertified
    end

  end

end

