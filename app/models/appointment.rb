class Appointment < ApplicationRecord
    has_one :Barber
    has_one :User
end
