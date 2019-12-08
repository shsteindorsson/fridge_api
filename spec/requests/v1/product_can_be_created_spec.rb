# frozen_string_literal: true

RSpec.describe 'V1::Products', type: :request do
  let(:headers) { { HTTP_ACCEPT: 'application/json' } }
  describe 'POST /v1/products' do
    it 'returns 201 status' do
      post '/v1/products',
           params: { barcode: '7310074707402',
                     title: 'Ericsberg',
                     quantity: '330ml',
                     description: 'A family dish' },
           headers: headers
      expect(response).to have_http_status 201
    end
  end
end
