class Grad < ActiveRecord::Base

	validates_presence_of :first_name, :last_name, :student_num, :email, :graduation_date

end
