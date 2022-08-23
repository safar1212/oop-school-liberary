require "./base_decorator.rb"

class capitalize_decorator < base_decorator

    def initialize(nameable)
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name.capitalize()
    end
end