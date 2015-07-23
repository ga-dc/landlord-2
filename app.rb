require "bundler/setup"
require "active_record"
require "pry"
require "pg"

require_relative "models/apartment"
require_relative "models/tenant"
require_relative "config/db"

binding.pry
