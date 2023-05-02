class Employee < ApplicationRecord
  validates :name ,presence: true
  validates :email ,presence: true

  before_validation :upper_case_name

  def upper_case_name
    if name.downcase
      self.name = name.upcase
      puts "converted"
    end
  end    
end



# validates  :name, presence: true
  # validates :email ,uniqueness: true
  # validates :age ,numericality: true
  # validate :name_check
  # def name_check
  #   if name != "Aman Vyas"
  #     errors.add(:name, "This is not the name")
  #   end
  # end     
  
