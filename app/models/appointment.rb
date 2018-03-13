class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  has_one :prescription
end
