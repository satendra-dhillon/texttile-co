ActiveAdmin.register Attendance do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :username, :barcode, :in_at, :out_at
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

config.clear_sidebar_sections!


  index do
    selectable_column
    id_column
    column :username
    column :barcode
    column :in_at
    column :out_at
    actions
  end

  show  do
		attributes_table do
	  	row :username
	  	row :barcode
	  	row :in_at
	  	row :out_at
	  	row "Duration" do
        "#{((attendance.out_at - attendance.in_at)/(60*60)).round(2)}" + "hr"
      end

	  end
	end
end
