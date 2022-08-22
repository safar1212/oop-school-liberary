class Teacher < Person

    def initialize(specialization = "Physics")
        @specialization = specialization
    end

    def specialization
        @specialization
    end

    def can_use_services?
        @parent_permission = true
    end

end