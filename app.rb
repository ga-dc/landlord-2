require "sinatra"
require "sinatra/reloader"
require "bundler/setup"
require "pg"
require "pry"
require "active_record"

require_relative "config/db"
require_relative "models/apartment"
require_relative "models/tenant"


binding.pry
