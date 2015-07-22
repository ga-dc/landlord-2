#AR classes are singular and capitalized by convention
#class Tenant inherits from ActiveRecord::Base which gives the class a lot of functionality that maps the ruby class Tenant to the tenant table in postgres
class Apartment < ActiveRecord::Base
  belongs_to :apartment
end
