require "rubygems"
require "bundler"
Bundler.require :default, (ENV['RACK_ENV'] || "development").to_sym

set :views, -> { root }

get "/" do
  cache_control :public, max_age: 60  # 1 min.
  "Hello at #{Time.now}"
  #content_type "application/atom+xml"
  #slim :index
end
