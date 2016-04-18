class Study < ActiveRecord::Base
  has_many :study_site_joins
  has_many :sites, through: :study_site_join
  has_many :enrollments
  has_many :participants, through: :enrollments

  validates :title, :investigator_name, :status, presence: true
  validates :title, uniqueness: {scope: :investigator_name}
end
