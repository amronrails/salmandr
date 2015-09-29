class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|

      t.integer :model_id
      
      t.string :name, null: false
      t.string :permalink, null: false
      t.integer :position
      t.integer :counter, :default => 0
      t.integer :year
      t.boolean :visible, :default => false
      t.text :description

      t.timestamps null: false
    end
     add_attachment :cars, :avatar
     add_index("cars", "model_id")
     add_index("cars", "permalink")

  end
end
