class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :company
      t.string :headline
      t.string :pros
      t.string :cons
      t.string :position
      t.string :dress_code
      t.string :size
      t.timestamps
    end
  end
end
