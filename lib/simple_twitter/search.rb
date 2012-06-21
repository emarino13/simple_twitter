module SimpleTwitter

  class Search

    SEARCH_URL = "http://search.twitter.com/search.json"

    attr_accessor(:per_page)
    attr_accessor(:lang)

    def initialize
      @per_page=10
      @lang = 'en'
    end

    def search (query)
      params = {
        :q => query,
        :rpp => @per_page, :lang => @lang
      }
      response = HTTParty.get(SEARCH_URL, :query => params)
      #same as {:query=>params}    end
      #:timeout is a key inside the hash that works with HTTParty
      JSON.parse(response.body)
      #same as return.JSON.parse(response.body) -- last line is instructions
    end
  end
end

