class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :haircut, :user_id, :barber_id
end
