RSpec.describe 'V1::Recipes', type: :request do
  describe 'POST /v1/recipes' do
    before do
      post '/v1/recipes',
        params: {
          barcode: '7310074707402',
          title: 'Ericsberg',
          quantity: '330ml',
          description: 'A family dish'
        }
    end
    it 'returns 201 status' do
      expect(response).to have_http_status 201
    end
  end
end
