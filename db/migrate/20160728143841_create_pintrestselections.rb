class CreatePintrestselections < ActiveRecord::Migration[5.0]
  def change
    create_table :pintrestselections do |t|

      t.timestamps
    end
  end
end
