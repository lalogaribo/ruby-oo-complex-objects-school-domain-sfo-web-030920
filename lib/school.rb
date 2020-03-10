require 'pry'
class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster.has_key?(grade) ? @roster[grade] << student_name : @roster[grade] = [student_name]
  end

  def roster
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
   
    new_roster = @roster.sort_by { |k, v| k}.to_h
    binding.pry
    puts 'adf'
  
    # @roster.sort{ |a, b| a <=> b }.to_h
  end
end