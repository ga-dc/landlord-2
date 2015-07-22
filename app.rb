require "pg"
require "active_record"
require "pry"

require_relative "../models/tenant"
require_relative "../models/apartment"
require_relative "../config/db"

Apartment.destroy_all
Tenant.destroy_all

peter = Doctor.create(first_name: "Peter", last_name: "Jesperson", specialty: “management”)

Patient.create(first_name: "Paul", last_name: "Westerberg", ailment: "reclusiveness", favorite_food: "brats", doctor_id: peter.id)

binding.pry
