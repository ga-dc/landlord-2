class Apartment < ActiveRecord::Base
  has_many :persons
end
