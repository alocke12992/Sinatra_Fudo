require 'sinatra'
ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym 


class Feed < Sinatra::Base 
  set :root, File.firname(__FILE__)
  enable :sessions 

end 

class Items < Sinatra::Base 
  set :root, File.dirname(__FILE__) 
  enable :sesssions
end 


