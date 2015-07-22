require "pg"
require "active_record"
require "pry"
# require all the gems we'll be using for this app from the Gemfile
require_relative "../models/tenant" # Model file names are singular
require_relative "../models/apartment" # Model file names are singular
# require the Student class definition that we defined in the models/student.rb file
require_relative "db"
# require the db connection file that connects us to PSQL
