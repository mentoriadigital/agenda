class Person < ApplicationRecord
  has_many :phones
  validates :name, :email, :birthdate, presence: true
end
