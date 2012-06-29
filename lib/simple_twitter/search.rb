module SimpleTwitter

  class Search

    SEARCH_URL = "http://search.twitter.com/search.json"

    attr_accessor(:per_page)
    attr_accessor(:lang)

    def initialize
      @per_page= 10
      @lang = 'en'
    end

    def search (query)
      params = {
        :q => query,
        :rpp => per_page,
        :lang => lang,
      }
     response = HTTParty.get(SEARCH_URL, :query => params)
     nasty_hash = JSON.parse(response.body)
     nasty_hash['results'].map {|r| Tweet.new(r)}
    end
  end
end

