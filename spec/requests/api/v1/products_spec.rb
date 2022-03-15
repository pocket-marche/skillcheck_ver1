# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Products', type: :request do
  describe 'GET /api/v1/products' do
    subject(:api_request) { get '/api/v1/products' }

    it 'returns a ok (200) status code' do
      api_request
      expect(response).to have_http_status :ok
    end

    describe 'when a product is exsited' do
      let(:product) { create(:product) }
      let!(:variant100) { create(:variant, price: 100, product: product) }
      let!(:variant200) { create(:variant, price: 200, product: product) }

      it 'returns a varid record' do
        api_request
        json = JSON.parse(response.body)
        product_ids = json['data']['products'].map { |x| x['id'] }
        variant_ids = json['data']['products'][0]['variants'].map { |x| x['id'] }
        expect(product_ids).to match_array([product.id])
        expect(variant_ids).to match_array([variant100.id, variant200.id])
      end
    end
  end
end
