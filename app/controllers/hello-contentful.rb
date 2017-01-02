require 'contentful'
require 'pp'

# This is the space ID. A space is like a project folder in Contentful terms
space_id = '4697y6pog3zj'

# This is the access token  for this space.Normally you get both ID and the token in the Contentful web app
access_token = '7f0bbc85aac6f00068b3f654475bd01057008802ba2412396f002d9df8b723bb'

# This creates the Client for this Space/Access Token pair
client = Contentful::Client.new(
    space: space_id,
    access_token: access_token,
    dynamic_entries: :auto
)

entry_id = 'A96usFSlY4G0W4kwAqswk'
entry = client.entry(entry_id)

puts "Title: #{entry.title}"
puts "By: #{entry.author}"
puts "Content type: #{entry.content_type}"
