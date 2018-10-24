class Student < ApplicationRecord
	has_one :course, through: :course
end
