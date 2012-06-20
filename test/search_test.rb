require ('test/unit')
require ('mocha')
require ('httparty')
require (json_file)

class MockExampleTest < Test::Unit::TestCase
  def test_example_mocking

    file_name = File.expand_path('../json/gaga.json'_FILE_)
    response = stub('first test ever', :body => File.read(file_name))
    HTTParty.expects(:get).returns(response)
  end
end
