# frozen_string_literal: true

class PrivateController < ActionController::API
  def private
    require 'net/http'
    require 'json'

    # access_token = request.headers['Authorization'].split(' ').last if request.headers['Authorization'].present?
    # puts access_token
    # @url = 'https://dev-v88tfgqc.us.auth0.com/userinfo'
    # @uri = URI(@url)
    # @response = Net::HTTP.get(@uri)
    # @output = JSON.parse(@response)

    url = URI('https://dev-v88tfgqc.us.auth0.com/userinfo')
    access_token = request.headers['Authorization'].split(' ').last if request.headers['Authorization'].present?
    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request['Authorization'] = `Bearer #{access_token}`

    response = http.request(request)
    puts response.read_body

    # render json: 'Hello from a private endpoint! You need to be authenticated to see this'
  end

  def private_scoped
    render json: { message: 'Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.' }
  end
end
