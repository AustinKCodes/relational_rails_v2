class CreateLiquorDistilleries < ActiveRecord::Migration[7.1]
  def change
    create_table :liquor_distilleries do |t|
      t.string :name
      t.integer :total_distilleries
      t.boolean :has_bourbon

      t.timestamps
    end
  end
end
