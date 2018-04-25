class CreateTempDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :temp_details do |t|
      t.datetime :current_time
      t.string :current_temp

      t.timestamps
    end
  end
end
