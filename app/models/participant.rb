class Participant < ActiveRecord::Base
  has_many :enrollments
  has_many :studies, through: :enrollments
  has_many :sites, through: :enrollments

  validates :name, :gender, :birthdate, presence: true

  def self.patient_count_by_birthdate(year)
    participants= Participant.all
    count = 0
    participants.each do |participant|
      if participant.birthdate.year == year
          count += 1
      end
    end
    p count
  end
end


