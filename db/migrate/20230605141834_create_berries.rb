class CreateBerries < ActiveRecord::Migration[7.0]
  def change
    create_table :berries do |t|
      t.integer :number
      t.integer :growth_time
      t.integer :size
      t.integer :smoothness

      t.timestamps
    end
  end
end
