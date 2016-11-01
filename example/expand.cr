require "../src/bitly.cr"

require "dotenv"
Dotenv.load

client = Bitly::Client.new(ENV["ACCESS_TOKEN"])

puts client.expand("http://bit.ly/dogecoin-plug_dj").long_url
