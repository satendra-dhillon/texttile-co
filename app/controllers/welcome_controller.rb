class WelcomeController < ApplicationController

	def index
		@employee_attandence = Attendance.find_by("barcode = ? AND created_at >=? AND created_at <= ?", current_employee.barcode, Date.today.beginning_of_day, Date.today.end_of_day)
	end

end
