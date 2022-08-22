class Teacher < Person
  def initialize(specialization = 'Physics')
    super()
    @specialization = specialization
  end

  attr_reader :specialization

  def can_use_services?
    @parent_permission = true
  end
end
