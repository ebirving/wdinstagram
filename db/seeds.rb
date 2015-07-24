require 'bundler/setup'
require "pry"

require_relative "../db/connection"
require_relative "../models/entry"

Entry.destroy_all

Entry.create(author: "Alex", photo_url: "http://www.stevensegallery.com/200/300", date_taken: '20150724')
Entry.create(author: "Erica", photo_url: "http://www.stevensegallery.com/500/500", date_taken: '20000101')
Entry.create(author: "Alex", photo_url: "http://www.stevensegallery.com/345/350", date_taken: '20040112')
Entry.create(author: "Erica", photo_url: "http://www.stevensegallery.com/300/300", date_taken: '20141101')
Entry.create(author: "Alex", photo_url: "http://www.stevensegallery.com/400/400", date_taken: '19980116')
