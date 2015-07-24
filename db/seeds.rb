require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"

Entry.destroy_all

Entry.create(author: "Alex", photo_url: "http://www.stevensegallery.com/200/300", date_taken: 'January 11, 2013')
Entry.create(author: "Erica", photo_url: "http://www.stevensegallery.com/500/500", date_taken: 'April 17, 1996')
Entry.create(author: "Alex", photo_url: "http://www.stevensegallery.com/345/350", date_taken: 'August 14, 2015')
Entry.create(author: "Erica", photo_url: "http://www.stevensegallery.com/300/300", date_taken: 'April 9, 2012')
Entry.create(author: "Alex", photo_url: "http://www.stevensegallery.com/400/400", date_taken: 'May 4, 1977')
