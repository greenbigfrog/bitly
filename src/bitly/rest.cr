require "http/client"
require "json"

module Bitly
  module REST
    HEADERS = HTTP::Headers{"Content-Type" => "application/json"}

    def request(method : String, url : String, data : String = nil)
      case method
      when "GET"
        res = HTTP::Client.get(url, HEADERS)
      when "POST"
        res = HTTP::Client.post(url: url, headers: HEADERS, body: data)
      else
        raise "Illegal method in request()"
      end

      if res.status_code == 200 && res.content_type == "application/json"
        return res.body
      else
        raise "We got a error response. (code: #{res.status_code}, content-type: #{res.content_type}, body: \"#{res.body}\")"
      end
    end
  end
end
