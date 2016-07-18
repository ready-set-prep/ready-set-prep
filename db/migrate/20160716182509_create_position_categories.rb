class CreatePositionCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :position_categories do |t|
      t.string :position
      t.string :category
      t.timestamps
    end
  end
end
