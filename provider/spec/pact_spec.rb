# frozen_string_literal: true

require 'rake'
require 'pact/tasks/task_helper'
include Pact::TaskHelper

RSpec.describe 'pact' do
  it 'runs pact verification' do
    handle_verification_failure do
      execute_pact_verify
    end
  end
end
