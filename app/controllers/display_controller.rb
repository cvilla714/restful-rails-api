class DisplayController < ActionController::API
  def index
    require 'uri'
    require 'net/http'

    url = URI('https://dev-v88tfgqc.us.auth0.com/oauth/token')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request['content-type'] = 'application/json'
    request.body = '{"client_id":"v1U0WW9qVkA40arM35FVagkUgwJUHFri","client_secret":"yIeEl_jPoMwd9RMcBLpkEWwPLrx7EA4ml0Oal2ezrHCn3Bzno4mWKqS6OHVHvGc2","audience":"this is the back end api connection","grant_type":"client_credentials"}'

    response = http.request(request)
    puts response.read_body
  end
end
