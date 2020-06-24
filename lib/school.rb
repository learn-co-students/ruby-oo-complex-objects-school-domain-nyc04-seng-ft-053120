require 'pry'
class School #model 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end
    def grade(level)
        roster.detect do |x, y| # returns the first element which satisfies the given condition in the block
            if x == level
                return y
            end
        end
    end
    def sort
        new_hash = {}
        roster.each do |x, y|
            new_hash[x] = y.sort
        end
        new_hash

    end
end

