require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "config/db"
require_relative "config/seeds"
require_relative "models/apartment"
require_relative "models/tenant"


binding.pry
