# code here!
require "pry"
class School
    # you should be applying accessor so that you are able to change/ add to data
     attr_accessor :school, :roster
    def initialize (school)
        # creates the instance variable to be used throught out the code
        @school = school
        @roster = {}
    end
    
    def add_student(student_name, grade)
    #  the || before the equal symbol if it equates to nill give it this value instead since in objs the = can be part of a method name 
        @roster[grade] ||= []
    
         if !roster[grade].include?(student_name)
            roster[grade] << student_name  
         end  
    end
  
    def grade(grade_level)
        # have to able to acess roster, get the grade
        @roster[grade_level]
    end
    def sort
        # have to be able to acess each array and sort their contents
        # have to return the roster 
        sorted_hash = {}
        @roster.each do |grade, student_array|
            sorted_hash[grade] = student_array.sort
        end
        sorted_hash
    end

end