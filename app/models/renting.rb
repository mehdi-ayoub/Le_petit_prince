class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :planet
end
