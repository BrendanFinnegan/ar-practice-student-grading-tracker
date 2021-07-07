class Student < ActiveRecord::Base
    has_many :student_exams
    has_many :exams, through: :student_exams

    def self.upper_classmen
        Student.where("year >= ?", 3)
    end

    def self.subject_matter_expert(degree)
        Student.where("degree == ?" , degree)
    end

end
