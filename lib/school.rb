class School
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @school = name
    @roster = {}
  end 
  
  def add_student(name, grd)
    if roster[grd].nil?
      roster[grd] = []
    end
    roster[grd].push(name)
  end
  
  def grade(grd)
    roster[grd]
  end
  
  def sort
    roster.each do |grd, student_arr|
      roster[grd] = student_arr.sort 
    end 
    roster
  end
end 