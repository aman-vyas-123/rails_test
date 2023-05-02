class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true

    before_validation :check_age
    before_validation :to_full_name

    def to_full_name
      self.full_name = "#{self.first_name.capitalize} #{self.last_name}"
      puts "converted"
    
    end    
    
    def check_age
      if age < 18
          errors.add(:age, "should be greater than 18")
      end
    end        

end
