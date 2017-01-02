require 'contentful'

$CLIENT = Contentful::Client.new(
    space: '4697y6pog3zj',
    access_token: '7f0bbc85aac6f00068b3f654475bd01057008802ba2412396f002d9df8b723bb',
    dynamic_entries: :auto
)

entries = $CLIENT.entries

