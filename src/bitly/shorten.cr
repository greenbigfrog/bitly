require "json"

module Bitly
  class Shorten
    JSON.mapping(
      url: String,
      long_url: String,
      hash: String,
      global_hash: String,
      new_hash: Int8
    )
  end
end
