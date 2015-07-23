class Tenant < ActiveRecord::Base
  belongs_to :apartment
end

# AR class.  singular and capitalized by convention

# belongs_to is a helper method allowing us to query database better
# b/c of better association between classes?
