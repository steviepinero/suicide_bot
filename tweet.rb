require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "XXX"
  config.consumer_secret     = "XXX"
  config.access_token        = "XXX"
  config.access_token_secret = "XXX"
end

# client.update() for a tweet
# to:JohnCena to tweet to someone

#looks for 5 most recent posts
loop do
client.search("kill myself", :result_type => "recent").take(1).collect do |tweet|
  puts "saving #{tweet.user.screen_name}"

  client.update("@#{tweet.user.screen_name}: Dont kill yourself, It gets better. Call 1-800-273-8255 if you need someone to talk to")
  puts tweet.user.screen_name
  sleep 120 #waits 2 minutes to post again
  end
end
