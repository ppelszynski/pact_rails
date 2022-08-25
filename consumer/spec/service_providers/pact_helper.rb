require 'pact/consumer/rspec'

Pact.service_consumer "Consumer" do
  has_pact_with "Users Service" do
    mock_service :users_api_client do
      port 1234
    end
  end
end
