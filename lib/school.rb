# code here!
require "pry"
class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    attr_reader :roster

    def add_student(student_name, grade)
        if @roster.has_key?(grade)
            #add student to array at grade
            @roster[grade] << student_name
        else #create new hash pair
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster = @roster.each { |grade, class_list| @roster[grade] = class_list.sort}
        @roster
    end

end

# bayside = School.new("Bayside")

# bayside.add_student("Zach Morris", 9)