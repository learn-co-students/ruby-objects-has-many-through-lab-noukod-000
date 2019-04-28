class Doctor 
  attr_accessor :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all.push(self)
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end 
  
  def appointments
    Appointment.all.select {|el| el.doctor == self}
  end 
  
  def patients
    appointments.map {|el| el.patient}
  end 
end 