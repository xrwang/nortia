require 'httparty'
require 'uri'

class ZipcodeLocation
  # rerror
  BASE_API_URL = "https://www.zipcodeapi.com/rest/KLZ8vn2tsKmeeDWvfUIKor0KNhZcdW8YI76ev8HXT3c7G8DW3lHsNHcAZcNc9WbR/info.json/"

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def api_url
    "#{BASE_API_URL}#{@zipcode}/degrees"
  end

  # 'https://www.zipcodeapi.com/rest/KLZ8vn2tsKmeeDWvfUIKor0KNhZcdW8YI76ev8HXT3c7G8DW3lHsNHcAZcNc9WbR/info.json/02138/degrees'

  # ['https://www.zipcodeapi.com/rest/KLZ8vn2tsKmeeDWvfUIKor0KNhZcdW8YI76ev8HXT3c7G8DW3lHsNHcAZcNc9WbR/info.json/',@zipcode,'/degrees'].join

  def get_long_lat
    response = HTTParty.get(api_url)
    Rails.logger.debug api_url
    response_p = JSON.parse(response.body)
    [response_p['lng'], response_p['lat']]
  end

end
