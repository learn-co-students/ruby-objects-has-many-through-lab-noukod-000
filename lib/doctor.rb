class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name="")
    @name = name
    @@all << self
  end

  def self.all
    @@all.dup.freeze
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |a|
      a.doctor == self
    end
  end

  def patients
    self.appointments.map do |a|
      a.patient
    end
  end
end
