class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :company
      t.string :headline
      t.string :pros
      t.string :cons
      t.timestamps
    end
  end
end
