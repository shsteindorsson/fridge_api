# frozen_string_literal: true

RSpec.describe 'V1::Products', type: :request do
  describe 'POST /v1/products' do
    before do
      post '/v1/products',
           params: {
             product: {
               barcode: '7310074707402',
               title: 'Ericsberg',
               quantity: '330ml',
               description: 'A family dish'
             }
           }
    end
    it 'returns 201 status' do
      expect(response).to have_http_status 201
    end
    it 'returns a message of success' do
      expect(response_json['message']).to eq 'Product created successfully'
    end
  end
end
