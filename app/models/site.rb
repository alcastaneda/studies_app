class Site < ActiveRecord::Base
  has_many :study_site_joins
  has_many :studies, through: :study_site_joins
  has_many :enrollments
  has_many :participants, through: :enrollments

  validates :name, :location, presence: true
end
