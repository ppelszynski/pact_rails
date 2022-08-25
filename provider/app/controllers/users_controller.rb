class UsersController < ApplicationController
  def index
    render(
      json: User.all.map { |user| { name: user.name } },
      status: :ok,
      headers: {
        'Content-Type' => "application/json"
      }
    )
  end
end
