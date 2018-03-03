# require 'rails_helper'

# RSpec.describe 'Safaricom API', type: :request do
#   # initialize test data 
#   let!(:saf_users) { create_list(:user, 10) }
#   let(:saf_user_id) { saf_users.first.id }

#   # Test suite for GET /user
#   describe 'GET /user' do
#     # make HTTP get request before each example
#     before { get '/user' }

#     it 'returns users' do
#       # Note `json` is a custom helper to parse JSON responses
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end

#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end
#   end

#   # Test suite for GET /user/:id
#   describe 'GET /user/:id' do
#     before { get "/user/#{saf_user_id}" }

#     context 'when the record exists' do
#       it 'returns the user' do
#         expect(json).not_to be_empty
#         expect(json['id']).to eq(saf_user_id)
#       end

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context 'when the record does not exist' do
#       let(:saf_user_id) { 100 }

#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end

#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find User/)
#       end
#     end
#   end

#   # Test suite for POST /user
#   describe 'POST /user' do
#     # valid payload
#     let(:valid_attributes) { { name: 'Marvin', role: 'ServiceUser' } }

#     context 'when the request is valid' do
#       before { post '/user', params: valid_attributes }

#       it 'creates a todo' do
#         expect(json['name']).to eq('Marvin')
#       end

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/user', params: valid_attributes }
#       before { post '/user', params: { name: 'Marvin' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Name has already been taken/)
#       end
#     end
#   end

#   # Test suite for PUT /user/:id
#   describe 'PUT /user/:id' do
#     let(:valid_attributes) { { role: 'CountyITManager' } }

#     context 'when the record exists' do
#       before { put "/user/#{saf_user_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to_not be_empty
#       end

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end
#   end

#   # Test suite for DELETE /user/:id
#   describe 'DELETE /user/:id' do
#     before { delete "/user/#{saf_user_id}" }

#     it 'returns status code 204' do
#       expect(response).to have_http_status(204)
#     end
#   end
# end