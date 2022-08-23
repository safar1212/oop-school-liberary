class Teacher < Person
  attr_reader :specialization

  def initialize(age, name = 'unknown', parent_permission: true, specialization: 'Physics')
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
