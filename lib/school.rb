# code here!

class School
  attr_reader :name, :roster
  def initialize(name)
    @roster = Hash.new
    @name = name
  end
  
  # grade pointint to an array of name
  
  def add_student(name,grade)
     self.roster[grade] ||= []
    self.roster[grade] << name
  end
  
  def grade(number)
    self.roster[number] 
  end
    
    
    def sort
      
       self.roster.each do | grade, name|
         name.sort!
       end
    end
    
end
