class Student < Person
  def initialize(age, classroom, name: 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    @play_hooky = play_hooky
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
