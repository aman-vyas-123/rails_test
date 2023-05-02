class Information < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :number, presence: true, length: { minimum: 10 } 
end
