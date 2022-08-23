class Student < Person
  def initialize(age, name: 'unknown', parent_permission: true, classroom: '10th')
    super(age, name, parent_permission)
    @classroom = classroom
    @play_hooky = play_hooky
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
