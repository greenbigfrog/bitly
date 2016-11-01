require "json"

module Bitly
  struct Data(T)
    JSON.mapping(
      data: T
    )
  end

  struct ExpandContainer
    JSON.mapping(
      expand: Array(Expand)
    )
  end

  class Expand
    JSON.mapping(
      short_url: String,
      long_url: String,
      user_hash: String,
      global_hash: String
    )
  end
end
