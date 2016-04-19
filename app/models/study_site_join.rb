class StudySiteJoin < ActiveRecord::Base
  belongs_to :site
  belongs_to :study

  validates :study_id, uniqueness: {scope: :site_id}
end
