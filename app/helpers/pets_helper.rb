

module PetsHelper
  # include HTTParty
  # base_uri = ENV['PETFINDER_HOST'] + ENV['PETFINDER_BASE_PATH']

  def self.get_auth_token()
    options = {
      client_id: ENV['PETFINDER_CLIENT_ID'],
      client_secret: ENV['PETFINDER_CLIENT_SECRET'],
      grant_type: 'client_credentials'
    }
    base_uri = ENV['PETFINDER_HOST'] + ENV['PETFINDER_BASE_PATH']
    data = HTTParty.post(base_uri + "/oauth2/token", body: options)
    data['access_token']
  end

  def self.get_pets(search_params)
    token = PetsHelper.get_auth_token
    headers = {
      Authorization: "Bearer #{token}"
    }
    base_uri = ENV['PETFINDER_HOST'] + ENV['PETFINDER_BASE_PATH']
    data = HTTParty.get(base_uri + "/animals", query: search_params, headers: headers)
    data
  end

end
