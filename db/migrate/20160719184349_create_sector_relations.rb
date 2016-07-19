class CreateSectorRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :sector_relations do |t|
      t.string :sector_name
      t.string :attire_category
      t.timestamps
    end
  end
end
