class TokenController < ActionController::API
  def index
    require 'uri'
    require 'net/http'

    url = URI('https://dev-v88tfgqc.us.auth0.com/oauth/token')

    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request['Authorization'] =
      'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IjE3eUdnNWdiVEZkSkd1U25pNDdXZyJ9.eyJpc3MiOiJodHRwczovL2Rldi12ODh0ZmdxYy51cy5hdXRoMC5jb20vIiwic3ViIjoidjFVMFdXOXFWa0E0MGFyTTM1RlZhZ2tVZ3dKVUhGcmlAY2xpZW50cyIsImF1ZCI6InRoaXMgaXMgdGhlIGJhY2sgZW5kIGFwaSBjb25uZWN0aW9uIiwiaWF0IjoxNjI0MjIyNDcyLCJleHAiOjE2MjQzMDg4NzIsImF6cCI6InYxVTBXVzlxVmtBNDBhck0zNUZWYWdrVWd3SlVIRnJpIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.Io6F1ClCFWnwt6Ju6aNpfnsSXdTes3_riWQJua5nQ1XSeJ2h3GcIlsQQnd4CWZwofJz2dqvIPZrh6twXUQHtn_eoAS3HNQlu4YyNOhl5IruA2VaO0ydcfv04av6jB-HM9isKfSs-dmjAYbG0DK1cpH3Qn-_sh8pVS2OODvVHr9FO3jxxBoDdLYbAhFGD9QsJORM4nh-ilQwC9PYwuDWA4uCn1be-dAzV2eex-gOWpzY3IA-oQk_YWi6EXizu2Wab2jvkdafk81tVz-vKipMhuWmDuYFKT8inFa7EY2oZvF1JnpDgSRB46ee9IctYy0U2_Yw9NGoTEC-9oRA0X3iqcQ'

    response = http.request(request)
    puts response.read_body
  end
end
