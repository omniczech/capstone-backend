require "rails_helper"

RSpec.describe UserteamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/userteams").to route_to("userteams#index")
    end


    it "routes to #show" do
      expect(:get => "/userteams/1").to route_to("userteams#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/userteams").to route_to("userteams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/userteams/1").to route_to("userteams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/userteams/1").to route_to("userteams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/userteams/1").to route_to("userteams#destroy", :id => "1")
    end

  end
end
