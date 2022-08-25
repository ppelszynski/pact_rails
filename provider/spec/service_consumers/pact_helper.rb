require 'pact/provider/rspec'
require './spec/service_consumers/users.rb'

Pact.service_provider 'Users Service' do
  honours_pact_with 'Consumer' do
    pact_uri '../consumer/spec/pacts/consumer-users_service.json'
  end
end
