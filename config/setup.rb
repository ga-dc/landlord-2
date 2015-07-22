require 'bundler/setup' #gems
require 'pg'
require 'active_record'
require 'pry'

require_relative 'db' #files in this directory
require_relative '../models/apartment'
require_relative '../models/tenant'
