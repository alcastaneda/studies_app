class Enrollment < ActiveRecord::Base
  belongs_to :study
  belongs_to :participant
  belongs_to :site

  validates :participant_id, uniqueness: {scope: :study_id}
end
