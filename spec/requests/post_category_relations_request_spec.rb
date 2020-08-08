require 'rails_helper'

RSpec.describe "PostCategoryRelations", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/post_category_relations/create"
      expect(response).to have_http_status(:success)
    end
  end

end
