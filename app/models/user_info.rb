class User_info < ApplicationRecord
  validates :height,
            :dress_size_form_number,
            :shirt_size_form_number,
            :pants_size,
            :jean_waist_size,
            :skirt_size,
            :shoe_size,
            numericality: { only_integer: true },
            presence: true


  # t.string   "shirt_size_form_sml"
  # t.string   "dress_size_form_sml"


  belongs_to :user
end
