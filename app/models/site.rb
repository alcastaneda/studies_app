require "csv"

class Site < ActiveRecord::Base
  has_many :study_site_joins
  has_many :studies, through: :study_site_joins
  has_many :enrollments
  has_many :participants, through: :enrollments

  validates :name, :location, presence: true

  def self.export_participants(site_id)
    site = Site.find(site_id)
    participants= site.participants
    CSV.open("#{site.name}.csv", "a+") do |csv|
        participants.each do |participant|
            csv << [participant.name, participant.gender, participant.birthdate, participant.address]
        end
    end
  end
end
