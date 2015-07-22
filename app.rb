require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "models/apartment"
require_relative "models/tenant"
require_relative "config/db.rb"

binding.pry
