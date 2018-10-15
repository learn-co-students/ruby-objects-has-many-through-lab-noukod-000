class Doctor
  attr_accessor :name

  @@all = []
  @@appointments = []

  def initialize name
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment patient, date
    appointment = Appointment.new(date, patient, self)
    @@appointments << appointment
    appointment
  end

  def appointments
    @@appointments.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end

  def doctors
    patients.collect do |patient|
      patient.doctor
    end
  end
end
