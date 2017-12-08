require 'rubygems'
require 'bundler/setup'

# myapp.rb
require 'sinatra'
require 'json'

VERSION = '1.0'

get '/' do
  result = {
    message: "Hello World V#{VERSION}",
    version: VERSION,
    environment: ENV.to_h
  }
  JSON.pretty_generate result
end
