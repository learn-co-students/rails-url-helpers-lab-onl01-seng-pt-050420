class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def have_content
    if self.active == false 
      "This student is currently inactive."
    else 
      "This student is currently active."
    end 
  end 

  def flip
    if self.active == false
      self.active = true
    elsif self.active == true
      self.active = false 
    end  
  end 
end