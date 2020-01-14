require 'rails_helper'

RSpec.describe 'Dishes API', type: :request do

	let!(:dishes) { create_list(:dish_with_restaurant, 10) }
  let(:dish_id) { dishes.first.id }

	# Test suite for GET /api/dishes
  describe 'GET /api/dishes' do
    # make HTTP get request before each example
    before { get '/api/dishes' }

    it 'returns dishes' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json['dishes'].size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /api/dishes/:id
  describe 'GET /api/dishes/:id' do
    before { get "/api/dishes/#{dish_id}" }

    context 'when the record exists' do
      it 'returns the restaurant' do
        expect(json).not_to be_empty
        expect(json['dishes'].first['id']).to eq(dish_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:dish_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find Dish with 'id'=100\"}")
      end
    end
  end

  # Test suite for GET /api/dishes/:dish_id/restaurants
  describe 'GET /api/dishes/:dish_id/restaurants' do
    before { get "/api/dishes/#{dish_id}/restaurants" }

    context 'when the record exists' do
      it 'returns the restaurant' do
        expect(json).not_to be_empty
        expect(json['restaurants'].size).to eq(3)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:dish_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find Dish with 'id'=100\"}")
      end
    end
  end
end