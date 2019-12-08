# frozen_string_literal: true

RSpec.describe 'V1::Products', type: :request do
  describe 'POST /v1/products' do
    describe 'Successfully' do
      before do
        post '/v1/products',
             params: {
               product: {
                 barcode: '7310074707402',
                 title: 'Ericsberg',
                 quantity: '330ml',
                 description: 'Nice and crisp'
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

    describe 'Unsuccessfully' do
      before do
        post '/v1/products',
             params: {
               product: {
                 barcode: '',
                 title: '',
                 quantity: '',
                 description: ''
               }
             }
      end
      it 'returns 422 status' do
        expect(response).to have_http_status 422
      end
      it 'returns an error message' do
        expect(response_json['error_message']).to eq 'Unable to create product'
      end
    end
  end
end
