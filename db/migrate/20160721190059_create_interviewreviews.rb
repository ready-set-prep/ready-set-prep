class CreateInterviewreviews < ActiveRecord::Migration[5.0]
  def change
    create_table :interviewreviews do |t|
      t.integer :user_id
      t.string :company
      t.string :experience
      t.string :length
      t.string :difficulty
      t.timestamps
    end
  end
end
