class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|

      t.integer :brand_id

      t.string :name, null: false
      t.string :permalink, null: false
      t.integer :position
      t.integer :counter, :default => 0
      t.integer :year
      t.boolean :visible, :default => false
      t.text :description

      t.timestamps null: false
    end
    add_attachment :models, :image
    add_index("models", "brand_id")
    add_index("models", "permalink")
  end
end
