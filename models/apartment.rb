class Apartment < ActiveRecord::Base
  has_many :tenants
end

# AR class.  singular and capitalized by convention

# has_many is a helper method allowing us to query database better
# b/c of better association between classes?
