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
  
end
