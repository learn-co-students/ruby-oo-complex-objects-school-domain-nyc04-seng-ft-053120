# code here!
require "pry"

class School
    attr_reader :roster
    def initialize(name)
        @name=name
        @roster={}
         
    end
    def add_student(student_name,grade)
        if(!roster[grade])
        roster[grade]=[]
        end
        roster[grade].push(student_name)

        
    end
    def grade(grade)
        roster[grade]

    end
    def sort
        roster.each do |key,value|
            roster[key]=value.sort
        end
    end
end