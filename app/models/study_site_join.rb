class StudySiteJoin < ActiveRecord::Base
  belongs_to :site
  belongs_to :study
end
