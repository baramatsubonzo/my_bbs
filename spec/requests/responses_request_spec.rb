require 'rails_helper'

RSpec.describe "Responses", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/responses/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/responses/new"
      expect(response).to have_http_status(:success)
    end
  end

end
