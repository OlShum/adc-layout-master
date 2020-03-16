class Cooperation < ApplicationRecord
  validates_format_of :email, :with => /@/
end
