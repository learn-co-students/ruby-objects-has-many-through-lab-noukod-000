class Appointment
    att_reader :patient, :doctor, :date
    @@all = []

    def initialize(patient= "", doctor= "", date="")
      @patient=patient
      @doctor=doctor
      @date= date
      @@all<<self
  end

    def self.all
      @@all
    end

    def patient
     self.patient
    end
    def doctor
      self.doctor
    end
  end
