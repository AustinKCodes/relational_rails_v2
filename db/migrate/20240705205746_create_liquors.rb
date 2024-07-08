class CreateLiquors < ActiveRecord::Migration[7.1]
  def change
    create_table :liquors do |t|
      t.string :name
      t.integer :age
      t.boolean :has_grain

      t.timestamps
    end
  end
end
