class Marina < ApplicationRecord
  has_many :slips
  has_many :boats, through: :slips
end
