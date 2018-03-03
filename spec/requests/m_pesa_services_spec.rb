# spec/requests/items_spec.rb
require 'rails_helper'

RSpec.describe 'MPesaService' do
  # Initialize the test data
  let!(:saf_user) { create(:user) }
  let!(:mpesa_services) { create_list(:m_pesa_service, 5, status: true, user_id: saf_user.id)}
  let(:saf_user_id) { saf_user.id }
  let(:service_id) { mpesa_services.first.id }
  # let!(:user) { create(:user) }
  # let!(:items) { create_list(:item, 20, todo_id: todo.id) }
  # let(:todo_id) { todo.id }
  # let(:id) { items.first.id }

  # Test suite for GET /user/:user_id/m_pesa_service
  describe 'GET /user/:user_id/m_pesa_service' do
    before { get "/user/#{saf_user_id}/m_pesa_service" }

    context 'when user exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all user items' do
        expect(json.size).to eq(5)
      end
    end

    context 'when user does not exist' do
      let(:saf_user_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end

  # Test suite for GET /user/:user_id/m_pesa_service/:id
  describe 'GET /user/:user_id/m_pesa_service/:id' do
    before { get "/user/#{saf_user_id}/m_pesa_service/#{service_id}" }

    context 'when saf_user m_pesa_service exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the m_pesa_service' do
        expect(json['id']).to eq(service_id)
      end
    end

    context 'when saf_user m_pesa_service does not exist' do
      let(:service_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find MPesaService/)
      end
    end
  end
end