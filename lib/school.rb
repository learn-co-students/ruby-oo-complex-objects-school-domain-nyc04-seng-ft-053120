require 'pry'

class School
    attr_accessor :roster
    attr_reader :school


    def initialize(school)
        @school = school
        @roster = {}
    end

    # def roster
    #     roster = {}
    # end

    def add_student(name, grade)
        @name = name
        @grade = grade
       
        # @roster[grade] = []
        # @roster[grade] << name
        
        if !@roster[grade]
            @roster[grade] = []
        end

        @roster[grade] << name

        # if @roster[grade]
        #     @roster[grade] << name
        # end

    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end