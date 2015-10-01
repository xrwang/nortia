require 'httparty'

class ZipcodeLocation
  API_URL =  'https://www.zipcodeapi.com/rest/KLZ8vn2tsKmeeDWvfUIKor0KNhZcdW8YI76ev8HXT3c7G8DW3lHsNHcAZcNc9WbR/info.json/02138/degrees'

  def get_long
    response = HTTParty.get(API_URL)
    # TODO more error checking (500 error, etc)
    response_p = JSON.parse(response.body)
    response_p['lng']
  end
end
