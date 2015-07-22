
require 'active_record'
require 'pry'

require_relative 'models/apartment'
require_relative 'models/tenant'
require_relative 'config/db.rb'

# def get_input(prompt)
#   puts prompt
#   return gets.chomp
# end
#
# def menu
#     puts "Hello! Welcome to the LandLine — a landlord command line tool! What would you like to do?"
#     puts "Options are:"
#     puts "1. View apartments"
#     puts "2. View current tenants"
#     puts "3. Create a new apartment"
#     puts "4. Create a new tenant"
#     puts "To make your selection, type 1, 2, 3, or 4, then press the 'enter' key."
#     landlord_input = gets.chomp
#     puts landlord_input
# end
