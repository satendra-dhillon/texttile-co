ActiveAdmin.register Employee do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  config.clear_sidebar_sections!

	permit_params :email,:username, :password, :password_confirmation
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :username
    column :email
    column :barcode
    actions
  end


	form do |f|
	  f.inputs "Employee Details" do
	    f.input :username
	    f.input :email
	    # if !f.object.new_record?
	    f.input :password
	    f.input :password_confirmation
	    # end
	  end
	  f.button :Submit
	end

	show  do
		attributes_table do
	  	row :username
	  	row :email
	  	row :barcode

	  end
  	end




end
