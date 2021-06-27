class TokenController < ActionController::API
  def gettoken
    require 'uri'
    require 'net/http'
    require 'openssl'

    url = URI('https://dev-v88tfgqc.us.auth0.com/oauth/token')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    # request["content-type"] = 'application/x-www-form-urlencoded'
    request['content-type'] = 'application/json'
    request.body = '{"client_id":"v1U0WW9qVkA40arM35FVagkUgwJUHFri","client_secret":"yIeEl_jPoMwd9RMcBLpkEWwPLrx7EA4ml0Oal2ezrHCn3Bzno4mWKqS6OHVHvGc2","audience":"this is the back end api connection","grant_type":"client_credentials"}'

    response = http.request(request)
    puts response.read_body
  end

  def callapi
    require 'uri'
    require 'net/http'

    url = URI('http://localhost:5000/private')

    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request['authorization'] =
      'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IjE3eUdnNWdiVEZkSkd1U25pNDdXZyJ9.eyJpc3MiOiJodHRwczovL2Rldi12ODh0ZmdxYy51cy5hdXRoMC5jb20vIiwic3ViIjoidjFVMFdXOXFWa0E0MGFyTTM1RlZhZ2tVZ3dKVUhGcmlAY2xpZW50cyIsImF1ZCI6InRoaXMgaXMgdGhlIGJhY2sgZW5kIGFwaSBjb25uZWN0aW9uIiwiaWF0IjoxNjI0NzgxMzI1LCJleHAiOjE2MjQ4Njc3MjUsImF6cCI6InYxVTBXVzlxVmtBNDBhck0zNUZWYWdrVWd3SlVIRnJpIiwic2NvcGUiOiJjcmVhdGU6dXNlcnMgcmVhZDp1c2VycyIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyJ9.rgMtDST0hINWp7VTkX-ualAvRPrq2OoD7Pq6cnnjIduR2njjJ_k5JDVyQDAsKfzu5U4IoUPjY7TuhrV1B8n8bAdit2n262ERu9MoAjs6LgRLR16MxGVyPek-vKLy4FKx3nKoP-K2JnzKv85ea2rAF3UthXEPpkcq_oCWc_TurrwARlYQZO6Q-jSk6PanofHdUugXif39uO_c5rBBo0YoC5VptKbYuyvcuFE1zyRylNMfwVehBS-t3bco41aHnroi0b3qy2qfwfN3v--be4WIuLFEsVsWVJ4c4LUPioFBkjVRfuACVuIfLDqbxm3Ey36oPPzDQOLyqBvPs8jMGMb4wA'

    response = http.request(request)
    puts response.read_body
  end

  def testyourapi
    require 'uri'
    require 'net/http'

    url = URI('http://localhost:5000/private')

    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)

    response = http.request(request)
    puts response.read_body
  end
end
