class Enrollment < ActiveRecord::Base
  belongs_to :study
  belongs_to :participant

  validates :participant_id, uniqueness: {scope: :study_id}
end
