class AttendancesController < InheritedResources::Base
before_action :authenticate_employee!

before_action :set_attendance, only: [:show, :edit, :update, :destroy]


  def index
    @attendances = current_employee.attendances
  end

 	def new
 		@attendance = current_employee.attendances.new
 	end

	def create
    binding.pry
  	@attendance = current_employee.attendances.new(attendance_params)

  	respond_to do |format|
  		if @attendance.save
  			format.html {redirect_to @attendance, notice: "attendance successfully created!"}
  		else
  			format.html { render :new }
  		end
  	end
  end


  def update
    binding.pry
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end




  private

  	def set_attendance
	  	@attendance = Attendance.find(params[:id])
	  end

    def attendance_params
      params.require(:attendance).permit(:username, :barcode, :in_at, :out_at)
    end
end

