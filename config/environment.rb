require "bundler/setup"
Bundler.require
require "sinatra/activerecord"
require "ostruct"
require "date"
require_all 'app/models'
# require_relative 'app/models/costume.rb'
# require_relative 'app/models/costume_store.rb'
# require_relative 'app/models/haunted_house.rb'

ENV["SINATRA_ENV"] ||= 'development'
ActiveRecord::Base.establish_connection(ENV["SINATRA_ENV"].to_sym)
