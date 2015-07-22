class Apartment < ActiveRecord::Base # AR classes are singular and capitalized by convention
  has_many :tenants # has_many argument is plural and snake_case
end
