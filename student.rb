class Student < Person

    def initialize(classroom = "10th", play_hooky = "¯\(ツ)/¯")
        @classroom = classroom
        @play_hooky = play_hooky
    end

    def play_hooky
        @play_hooky
    end

end