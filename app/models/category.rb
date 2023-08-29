class Category < ApplicationRecord
  has_many :planets, dependent: :destroy
end
