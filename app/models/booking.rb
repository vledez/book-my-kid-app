class Booking < ApplicationRecord
  belongs_to :kid

  validates :reservation, presence: true
end

