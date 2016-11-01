require "./bitly/*"
require "json"

module Bitly
  class Client
    include Bitly::REST
    BASE_API = "https://api-ssl.bitly.com/"

    def initialize(@access_token : String)
    end

    def expand(short : String)
      data = Bitly::Data(Bitly::ExpandContainer).from_json(request("GET", BASE_API + "/v3/expand?access_token=" + @access_token + "&shortUrl=" + short))
      return data.data.expand.first
    end

    def shorten(long : String)
      data = Bitly::Data(Bitly::Shorten).from_json(request("GET", BASE_API + "/v3/shorten?access_token=" + @access_token + "&longUrl=" + long))
      return data.data
    end
  end
end
