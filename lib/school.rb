# code here!
require 'pry'

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_reader :roster

    def add_student(student, grade)
        @student = student
        @grade = grade
        
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
        #if grade is in the roster
        #we will add student to that grade
        #key = grade, value = array of student names
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, student|
            @roster[grade] = student.sort
        end
    end

end


# binding.pry
