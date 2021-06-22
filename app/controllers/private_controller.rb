# frozen_string_literal: true

class PrivateController < ActionController::API
  def index
    require 'faraday'

    url = 'https://dev-v88tfgqc.us.auth0.com/userinfo'

    access_token = request.headers['authorization'].split(' ').last
    puts access_token
    response = Faraday.get(url, { 'authorization' => 'Bearer' + access_token })
    p response.status
    p response.body
    response = Faraday.get(url,
                           { 'authorization' => 'Bearer' + access_token })
  end
end
