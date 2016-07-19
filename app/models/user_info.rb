class User_info < ApplicationRecord
  validates :height,
            :dress_size_form_number,
            :shirt_size_form_number,
            :pants_size,
            :jean_waist_size,
            :skirt_size,
            :shoe_size,
            :shirt_size_form_sml,
            :dress_size_form_sml,
            presence: true

  belongs_to :user
end
