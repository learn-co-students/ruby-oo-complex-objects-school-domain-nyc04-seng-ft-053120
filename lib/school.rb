require "pry"

class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = Hash.new { |h, k| h[k] = [] } # format the key-val pairs, val will be an array
  end

  def add_student(name, grade)
    @roster[grade] << name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    new_hash = {}
    @roster.each { |grade, students| new_hash[grade] = students.sort }
    new_hash
  end
end