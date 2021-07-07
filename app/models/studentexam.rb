class StudentExam < ActiveRecord::Base
    belongs_to :student
    belongs_to :exam


    def print_details
       exam = self.exam.subject
       student = self.student.name
       grade = self.grade
       "#{student} took the #{exam} exam receiving a score of #{grade}"
    end


    def  questions_correct_ratio
        grade = self.grade
        questions = self.exam.total_questions
        result = grade / questions
        "#{result} questions correct out of #{questions} questions total"
    end

end