class Boat < ApplicationRecord
  belongs_to :slip, optional: true
end
