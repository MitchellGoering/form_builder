require 'rails_helper'

RSpec.describe "Myforms", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/myforms/index"
      expect(response).to have_http_status(:success)
    end
  end

end
