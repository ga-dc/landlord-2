# allows "ruby filname" to load
require "bundler/setup"	

# required gems
require "pg"
require "active_record"
require "pry"

# required files located relative to current location
require_relative "../models/tenent"
require_relative "../models/apartment"
require_relative "db"