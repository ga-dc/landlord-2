require 'bundler/setup'
require "pg"
require "active_record"
require "pry"

require_relative "config/db"
require_relative "models/apartment.rb"
require_relative "models/tenant.rb"

binding.pry
