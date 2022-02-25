class Phone < ApplicationRecord
  belongs_to :person
  validates :phone, :description, presence: true
  enum status: { active: 0, inactive: 1, changed: 2, extinct: 3 }
end
