class CreateCompanySaveds < ActiveRecord::Migration[5.0]
  def change
    create_table :company_saveds do |t|
      t.integer  :user_id
      t.string   :company
      t.string   :position
      t.timestamps
    end
  end
end
