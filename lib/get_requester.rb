# Write your code here

require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

    attr_accessor :url


    def initialize(url)
      @url = url
    end
  
    def get_response_body
  
      uri = URI.parse(@url)
      res = Net::HTTP.get_response(uri)
      res.body
  
    end
  
    def parse_json
      JSON.parse(self.get_response_body)
    end
  
end

# binding.pry


