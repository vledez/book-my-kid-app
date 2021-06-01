class Booking < ApplicationRecord
  belongs_to :kid

  validates :date, :hour, presence: true
end

