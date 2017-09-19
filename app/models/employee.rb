class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :genrate_bar_code




  private

  def genrate_bar_code
  	barcodes = Employee.all.map(&:barcode)
  	number = rand(1000..9999)
  	while barcodes.include? number
  		number = rand(1000..9999)
  	end
  	self.barcode = number
  end
end
