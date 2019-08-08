class Api::V1::UserController < ApplicationController

  def index
    @users = User.all
    render json: @users
    @user = HTTParty.post('https://api.petfinder.com/v2/oauth2/token',
      :body => {
        grant_type: 'client_credentials',
        client_id: 'TXOYiRk4bZy47ftjSC6pnRkJgzNQBCvkKm5iVYwxYJ9MKl2qNB',
        client_secret: 'ZadEiHrIcy4x0VbDwB7W7Pd00WaPoN1325eeWPtv'}.to_json)
        # headers: { 'Content-Type' => 'application/json' })
  end

end
