# frozen_string_literal: true

RSpec.describe 'V1::Products', type: :request do
  describe 'GET /v1/products' do
    describe 'Successfully' do
      before do
        get '/v1/products'
      end
      it 'gets 200 status' do
        expect(response).to have_https_status 200
      end
    end
  end
end
