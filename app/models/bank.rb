class Bank < ApplicationRecord
  validates :name, presence: true
  has_many :rewards, dependent: :destroy
end
