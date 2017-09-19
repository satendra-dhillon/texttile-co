class AddBarcodeToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :barcode, :integer
  end
end
