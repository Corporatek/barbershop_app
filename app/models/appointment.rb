class Appointment < ApplicationRecord
    belongs_to :barber
    belongs_to :user
    has_one :barber
    has_one :user
end
