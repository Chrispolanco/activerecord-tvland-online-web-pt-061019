class Actor < ActiveRecord::Base
  
  has_many :characters 
  has_many :shows, through: :characters 
  
  def full_name 
    "#{self.first.name} #{self.last.name}"
  end 
  
  def list_roles
    characters.each do |character|
      "#{character.name} - #{character.show.name}"
    end
  end 
  
end