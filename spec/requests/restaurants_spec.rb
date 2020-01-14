require 'rails_helper'

RSpec.describe 'Restaurants API', type: :request do

	let!(:restaurants) { create_list(:restaurant_with_dish, 10) }
  let(:restaurant_id) { restaurants.first.id }

	# Test suite for GET /api/restaurants
  describe 'GET /api/restaurants' do
    # make HTTP get request before each example
    before { get '/api/restaurants' }

    it 'returns restaurants' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json['restaurants'].size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /api/restaurants/:id
  describe 'GET /api/restaurants/:id' do
    before { get "/api/restaurants/#{restaurant_id}" }

    context 'when the record exists' do
      it 'returns the restaurant' do
        expect(json).not_to be_empty
        expect(json['restaurants'].first['id']).to eq(restaurant_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:restaurant_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find Restaurant with 'id'=100\"}")
      end
    end
  end

  # Test suite for GET /api/restaurants/:restaurant_id/dishes
  describe 'GET /api/restaurants/:restaurant_id/dishes' do
    before { get "/api/restaurants/#{restaurant_id}/dishes" }

    context 'when the record exists' do
      it 'returns the restaurant' do
        expect(json).not_to be_empty
        expect(json['dishes'].size).to eq(3)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:restaurant_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find Restaurant with 'id'=100\"}")
      end
    end
  end
end