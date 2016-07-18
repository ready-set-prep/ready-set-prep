class CreateUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.integer :height
      t.integer :dress_size_form_number
      t.integer :shirt_size_form_number
      t.integer :pants_size
      t.integer :jean_waist_size
      t.integer :skirt_size
      t.float   :shoe_size
      t.string  :shirt_size_form_sml
      t.string  :dress_size_form_sml
      t.timestamps
    end
  end
end
