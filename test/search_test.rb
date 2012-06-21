require ('test/unit')
require ('mocha')
require ('httparty')
require ('simple_twitter.rb')


class MockExampleTest < Test::Unit::TestCase
  def test_example_mocking

    s=SimpleTwitter::Search.new
    file_name = File.expand_path('../test/json_file.json', File.dirname(__FILE__))
    response = stub('first test ever', :body => File.read(file_name))
    HTTParty.expects(:get).returns(response)
    #assert_equal(response, HTTParty.get('http://search.twitter.com/search.json?q=(gaga&rpp=1'))

    tweets=s.search("gaga")
    assert(tweets.is_a?(Hash))
 end
end
