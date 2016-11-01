require "../src/bitly.cr"

require "dotenv"
Dotenv.load

client = Bitly::Client.new(ENV["ACCESS_TOKEN"])

puts client.shorten("http://www.google.com").url
