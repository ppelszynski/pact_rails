require 'rails_helper'

describe UsersApiClient, pact: true do
  describe 'number_of_users' do
    context 'when there are some users' do
      it 'returns number of users' do
        users_api_client.given('users exist').
          upon_receiving('a request for users').
          with(method: :get, path: '/users', query: '').
          will_respond_with(
            status: 200,
            headers: { 'Content-Type' => 'application/json; charset=utf-8' },
            body: [
              { name: 'Tupac Shakur' },
              { name: 'Biggie Smalls' }
            ]
          )

        expect(UsersApiClient.new.number_of_users).to eq(2)
      end
    end

    context 'when there are no users' do
      it 'returns 0' do
        users_api_client.given('no users').
          upon_receiving('a request for users').
          with(method: :get, path: '/users', query: '').
          will_respond_with(
            status: 200,
            headers: { 'Content-Type' => 'application/json; charset=utf-8' },
            body: [ ]
          )

        expect(UsersApiClient.new.number_of_users).to eq(0)
      end
    end
  end
end
