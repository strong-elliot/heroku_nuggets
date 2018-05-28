class Sub < ApplicationRecord
  has_many :subscribings
  has_many :nuggets, through: :subscribings
end
