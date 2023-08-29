class Planet < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :rentings, dependent: :destroy
end
