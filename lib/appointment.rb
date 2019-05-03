class Appointment

    attr_reader :name, :doctor, :date

    @@all = []

    def initialize(name,doctor,date)
        @name = name
        @doctor = doctor
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

    def patient
        self.name
    end

    def doctors
        self.doctor
    end

end
