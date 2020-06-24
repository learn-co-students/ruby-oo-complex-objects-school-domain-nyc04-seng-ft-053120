# code here!

require 'pry'

class School
    attr_accessor :school, :roster
    
    def initialize(school) 
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        @student_name = name #name value being passed becomes instance variable
        @grade = grade #grade value being passed becomes instance variable
        if @roster.include?(grade) == false #Check roster and if @roster does not inclide grade 
          @roster[grade] = [] #@roster[grade] is equal to an array
                end
        @roster[grade] << name #we can push the  name value into this create key and value and will put miltiple values into one key
      end

      def grade(num)
       @roster[num]
      end

      def sort
        @roster.each do |grade, name| 
            
          @roster[grade] = name.sort
        end
      end



end


