class Activity < ApplicationRecord
  belongs_to :coordinator
  belongs_to :student
  belongs_to :examination_type
end
