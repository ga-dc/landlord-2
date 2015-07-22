class Tenant < ActiveRecord::Base # AR classes are singular and capitalized by convention
  belongs_to :apartment # belongs_to argument is singular and snake_case
end
