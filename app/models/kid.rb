class Kid < ApplicationRecord
  # belongs_to :user
  has_many :bookings
  has_many :skills, dependent: :destroy
  has_one_attached :photo
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  validates :name, presence: true
<<<<<<< HEAD

=======
  validates :localisation, presence: true
  validates :age, presence: true
  validates :price, presence: true
  
  include PgSearch::Model
  pg_search_scope :search, against: [ :localisation, :service ], using: { tsearch: { prefix: true } }
  
>>>>>>> master
end
