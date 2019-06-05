class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles 
    self.characters.map do |char|
      id = char.show_id
      char_show = Show.find(id)
      "#{char.name} - #{char_show.name}"
    end
  end
end