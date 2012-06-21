#!/usr/bin/env ruby
require('simple_twitter')
require('pp')

p=SimpleTwitter::Search.new

  loop do
    $stdout.write("What would you like to search twitter?")
    input=$stdin.gets.chomp

    $stdout.write("How many result per page?")
    perpage=$stdin.gets.chomp

    $stdout.write("What language would you like?")
    language=$stdin.gets.chomp

    p.per_page = perpage
    p.lang = language
    pp(p.search(input))

    break if input ==("quit")
  end





