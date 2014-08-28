class Student < User
  after_initialize :set_default_role, :if => :new_record?
     
  def set_default_role
    self.role ||= :student 
  end
end
