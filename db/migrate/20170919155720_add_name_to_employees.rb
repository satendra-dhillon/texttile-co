class AddNameToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :username, :string
  end
end
