class Planet < ApplicationRecord
  include PgSearch::Model

  has_many_attached :photos
  belongs_to :category
  belongs_to :user
  has_many :rentings, dependent: :destroy
  geocoded_by :spaceport
  after_validation :geocode, if: :will_save_change_to_spaceport?

  pg_search_scope :search_by_title_and_description,
  against: [ :title, :description, :renting_price ],
  using: {
    tsearch: { prefix: true }
  }
end
