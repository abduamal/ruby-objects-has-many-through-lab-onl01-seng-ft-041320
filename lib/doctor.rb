class Doctor
  attr_accessor :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self}
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, patient, self)
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
