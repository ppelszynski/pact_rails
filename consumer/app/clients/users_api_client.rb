class UsersApiClient
  def number_of_users
    response = HTTParty.get(
      'http://localhost:1234/users'
    )

    response.count
  end
end
