require "./nameable.rb"

class base_decorator < Nameable

    def initialize(nameable)
        super()
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name[1..10]
    end

end