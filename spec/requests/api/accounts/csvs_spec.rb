require 'rails_helper'

RSpec.describe 'csvs' do
  describe 'GET /api/accounts/csv' do
    it do
      get '/api/accounts/csv'
      expect(response).to have_http_status(:ok)

      assert_response_schema_confirm(200)
    end
  end
end
