require ('test/unit')
require ('simple_twitter')

class TweetTest < Test::Unit::TestCase
  def test_hash_turns_into_accessors
    hash_from_twitter = {
      'text' => 'Twitter made easy!',
      'from_user' => 'twitter_maven',
      'profile_image_url' => 'http://example.com',
      'created_at' => '10 am MTN'
    }

    tweet = SimpleTwitter::Tweet.new(hash_from_twitter)
    assert_equal(hash_from_twitter['text'], tweet.text)
    assert_equal(hash_from_twitter['from_user'], tweet.user)
    assert_equal(hash_from_twitter['profile_image_url'], tweet.user_image_url)
    assert_equal(hash_from_twitter['created_at'], tweet.time_stamp)
  end
end
