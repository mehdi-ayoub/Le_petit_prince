class Planet < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :rentings, dependent: :destroy
  geocoded_by :spaceport
  after_validation :geocode, if: :will_save_change_to_spaceport?
end
