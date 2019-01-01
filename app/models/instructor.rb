class Instructor
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_student(student_name, test)
    BoatingTest.all.find { |exam| exam.student.first_name == student_name && exam.test_name}
  end

  def pass_student(student_name, test)
    if find_student(student_name, test)
      find_student(student_name, test).status = "Pass"
    else
      BoatingTest.new(student_name, test, "Pass", self)
    end
  end

  def fail_student(student_name, test)
    if find_student(student_name, test)
      find_student(student_name, test).status = "Fail"
    else
      BoatingTest.new(student_name, test, "Fail", self)
    end
  end
end
