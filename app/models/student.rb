class Student < ActiveRecord::Base
  def to_full_name
    "#{self.first_name} #{self.last_name}"
  end
end