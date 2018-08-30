class BarberSerializer < ActiveModel::Serializer
  attributes :id, :name, :chair, :user_id
end
