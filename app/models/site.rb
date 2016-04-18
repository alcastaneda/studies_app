class Site < ActiveRecord::Base
  has_many :study_site_joins
  has_many :studies, through: :study_site_joins

  validates :name, :location, presence: true
end
