class Interviewreview < ApplicationRecord
  validates_presence_of :company, :experience, :length, :difficulty
end
