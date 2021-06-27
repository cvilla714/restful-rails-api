# frozen_string_literal: true

class PrivateController < ActionController::API
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
end
