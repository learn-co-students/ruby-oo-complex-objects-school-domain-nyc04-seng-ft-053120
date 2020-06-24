# code here!
require "pry"

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)

    if roster[grade]
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster.collect {|grade_level,names| return names if grade_level == grade }
  end

  def sort
    roster.each_with_object({}) { |(grade,name),sorted_roster| sorted_roster[grade] = name.sort!}
  end



end
