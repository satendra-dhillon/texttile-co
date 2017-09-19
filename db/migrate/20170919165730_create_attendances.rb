class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.string :username
      t.integer :barcode
      t.datetime :in_at, :null => true
      t.datetime :out_at, :null => true
      t.integer :employee_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
