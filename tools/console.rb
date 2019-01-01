require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kah = Student.new("Kah")
pupper = Student.new("Pupper")

jane = Instructor.new("Jane")
kevin = Instructor.new("Kevin")
matt = Instructor.new("Matt")


bt1 = BoatingTest.new(kah, "Code Challenge", "Fail", jane)
bt3 = BoatingTest.new(kah, "Code Challenge2", "Pass", kevin)
bt4 = BoatingTest.new(kah, "Code Challenge3", "Pass", matt)

bt5 = BoatingTest.new(pupper, "Code Challenge3", "Fail", matt)
bt6 = BoatingTest.new(pupper, "Code Challenge2", "Fail", matt)
bt7 = BoatingTest.new(pupper, "Code Challenge1", "Fail", matt)
bt8 = BoatingTest.new(pupper, "Code Challenge4p", "Fail", matt)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
