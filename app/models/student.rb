class Student < ActiveRecord::Base

  def active=(status)
    self[:active] = status
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end