# code here!

require "pry"

class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        # binding.pry
        if (!@roster.has_key?(grade)) then
            # binding.pry
            @roster[grade] = []
        end
        @roster[grade].push(student)
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort()
        @roster.each{|grade, roster|
            # binding.pry
            @roster[grade] = roster.sort
        }
        @roster
    end

end