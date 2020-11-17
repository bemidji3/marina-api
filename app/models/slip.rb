class Slip < ApplicationRecord
  has_one :boat
  belongs_to :marina
end
