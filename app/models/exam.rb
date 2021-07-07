class Exam < ActiveRecord::Base
    has_many :student_exams
    has_many :students, through: :student_exams

    def insert_feedback(student, grade, comment)
        new_student_exam = StudentExam.new(grade: grade , teacher_comment: comment)
        new_student_exam.student = student
        new_student_exam.exam = self
        new_student_exam.save
    end

    def class_average
        self.student_exams.all.average(:grade)
    end
end
