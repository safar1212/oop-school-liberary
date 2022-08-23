require "./base_decorator.rb"

class Capitalize_Decorator < Base_Decorator

    def initialize(nameable)
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name.capitalize()
    end
end