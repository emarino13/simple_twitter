#!/usr/bin/env ruby
require('simple_twitter')
require('pp')
require('optparse')

class UserInterface

   def initialize
    @searcher = SimpleTwitter::Search.new

    OptionParser.new do |parser|
      parser.banner = "Usage: simple-twitter [options] search-query"

      parser.on('-h', '--help', 'This message') do
        $stdout.puts(parser)
        exit
      end

      parser.on('-r', '--results-per-page=COUNT', 'Return COUNT tweets') do |rpp|
        @searcher.results_per_page = rpp.to_i
      end
    end.parse!(ARGV)
  end

  def run
    if ARGV.empty?
      $stderr.puts("Please give a search query on the command line")
      exit(1)
    end

    ARGV.each do |query|
      pp(@searcher.search(query))
    end
  end
end

UserInterface.new.run




