class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :haircut, :user_id, :barber_id :barber_name
