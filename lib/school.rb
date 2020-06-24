class School

    def initialize(name)
        @name = name
        @roster ={}
    end
    def roster
        @roster
    end
    def add_student(student,grade)
        @student = student
        @grade = grade
        if !@roster[grade]
        @roster[grade] = []
        end
        @roster[grade] << student
    end
    def grade(grade)
        return @roster[grade]
    end
    def sort
        @roster.each do|grade,student|
        @roster[grade]=student.sort
        end
    end


end