require_relative "../config/environment.rb"

class Student
  
  attr_reader :id 
  attr_accessor :name, :grade
  
  def initialize(id, name, grade)
    @id = nil
    @name = name
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS STUDENTS(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end
end
