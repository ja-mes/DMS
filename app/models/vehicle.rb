class Vehicle < ApplicationRecord
    validates :year, presence: true
    validates :make, presence: true
    validates :model, presence: true
end
