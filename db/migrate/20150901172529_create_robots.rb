class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :country_of_origin
      t.string :function
      t.string :serial_number
      t.boolean :killer

      t.timestamps null: false
    end
  end
end
