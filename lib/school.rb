# code here!
class School
    attr_reader :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    #setter
    def add_student(student, grade)
        if roster.has_key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end

    #getter
    def grade(grade)
        @roster[grade]
    end

    def sort
       @roster.each do |grade, student|
            student.sort!
       end
    end
end
