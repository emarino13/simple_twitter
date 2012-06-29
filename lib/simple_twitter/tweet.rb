module SimpleTwitter


  class Tweet
    #SEARCH_URL = "http://search.twitter.com/search.json"

    attr_accessor(:text,:user,:user_image_url,:time_stamp)

    def initialize (tweet_hash)
      @text   = tweet_hash['text']
      @user   = tweet_hash['from_user']
      @user_image_url = tweet_hash['profile_image_url']
      @time_stamp = tweet_hash['created_at']
    end
  end
end

