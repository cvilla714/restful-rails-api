# frozen_string_literal: true

class PrivateController < ActionController::API
<<<<<<< HEAD
  def private
    # require 'net/http'
    # require 'json'

    # access_token = request.headers['Authorization'].split(' ')
    # puts access_token
    # @url = 'https://dev-v88tfgqc.us.auth0.com/userinfo'
    # request['Authorization'] =
    #   `Bearer #{access_token}`
    # @uri = URI(@url)
    # @response = Net::HTTP.get(@uri)
    # @output = JSON.parse(@response)

    render json: 'Hello from a private endpoint! You need to be authenticated to see this'
  end
=======
  def index
    require 'faraday'

    url = 'https://dev-v88tfgqc.us.auth0.com/userinfo'
>>>>>>> 38dcd2f6a7237ddbe5ec8a5fb633ab6e4cdf89d6

    access_token = request.headers['authorization'].split(' ').last
    puts access_token
    response = Faraday.get(url, { 'authorization' => 'Bearer' + access_token })
    p response.status
    p response.body
    response = Faraday.get(url,
                           { 'authorization' => 'Bearer' + access_token })
  end
end
