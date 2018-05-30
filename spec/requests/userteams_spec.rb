require 'rails_helper'

RSpec.describe "Userteams", type: :request do
  describe "GET /userteams" do
    it "works! (now write some real specs)" do
      get userteams_path
      expect(response).to have_http_status(200)
    end
  end
end
