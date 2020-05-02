class Patient
  attr_accessor :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end

  def doctors
    appointment.map { |appointment| appointment.doctor}
  end

  def new_appointment
    new_appointment = 
  end
end
