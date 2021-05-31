class Booking < ApplicationRecord
  belongs_to :kids

  validates :date, :hour, presence: true
end
