require_relative "../config/environment.rb"

class Student
  
  attr_reader :id 
  attr_accessor :name, :grade
  
  def initialize(id, name:, grade:)
    @id = nil
    @name = name
    @grade = grade
  end
end
