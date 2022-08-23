class Teacher < Person
  def initialize(age, name = "unknown", parent_permission: ture,specialization = 'Physics')
    super(age, name, parent_permission)
    @specialization = specialization
  end

  attr_reader :specialization

  def can_use_services?
    @parent_permission = true
  end
end
