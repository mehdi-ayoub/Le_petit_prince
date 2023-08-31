class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :last_name, presence: true
  has_many :planets, dependent: :destroy
  has_many :rentings, dependent: :destroy
  has_many :rentings_as_owner, through: :planets, source: :rentings
end
