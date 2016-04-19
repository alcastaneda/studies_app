class Participant < ActiveRecord::Base
  has_many :enrollments
  has_many :studies, through: :enrollments
  has_many :sites, through: :enrollments

  validates :name, :gender, :birthdate, presence: true
end
