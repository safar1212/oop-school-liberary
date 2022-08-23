require "./base_decorator.rb"

class Trimmer_Decorator < Base_Decorator

    def initialize(nameable)
        @nameable = nameable
    end
    
    def correct_name
        @nameable.correct_name
    end
    
end