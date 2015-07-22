#gems we need
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

#files we need that are located relative to where this file lives
require_relative "../models/tenant"
require_relative "../models/appartment"
require_relative "db"
