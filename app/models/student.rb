require 'pry'
class Student
  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.select { |student| student.first_name == first_name }
  end

  def grade_percentage
    find_person = BoatingTest.all.select { |exam| exam.student == self }
    passed_exams = find_person.select { |exam| exam.status == "Pass"}
    average = passed_exams.count.to_f / find_person.count.to_f
    average * 100
  end
end
