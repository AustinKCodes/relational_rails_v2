class AddLiquorDistilleryToLiquors < ActiveRecord::Migration[7.1]
  def change
    add_reference :liquors, :liquor_distillery, null: false, foreign_key: true
  end
end
