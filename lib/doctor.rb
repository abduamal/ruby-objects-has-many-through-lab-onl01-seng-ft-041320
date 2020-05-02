class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name, date)
    @name = name
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    self.all.select { |appointment| appointment.doctor = self}
  end
end
