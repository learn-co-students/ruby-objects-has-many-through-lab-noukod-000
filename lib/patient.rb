class Patient
  @@all = []
  attr_accessor
  def initialize(name="")
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    self.appointments.map do |a|
      a.doctor
    end
  end

  def appointments
    Appointment.all.select do |a|
      a.patient == self
    end
  end
end
