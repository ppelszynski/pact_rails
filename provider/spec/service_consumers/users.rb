require 'pact/provider/rspec'

Pact.provider_states_for 'Consumer' do
  provider_state 'users exist' do
    set_up do
      User.create!(name: 'Tupac Shakur')
      User.create!(name: 'Biggie Smalls')
    end
  end

  provider_state 'no users' do
    set_up do
      User.delete_all
    end
  end
end

