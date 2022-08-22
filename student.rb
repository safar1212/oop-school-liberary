class Student < Person
  def initialize(classroom = '10th', play_hooky = "¯\(ツ)/¯")
    super()
    @classroom = classroom
    @play_hooky = play_hooky
  end

  attr_reader :play_hooky
end
